import 'package:intl/intl.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:table_builder/src/domain/filters.dart';
import 'package:table_builder/src/domain/tb_filter.dart';
import 'package:table_builder/src/domain/tb_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../application/table_builder_bloc/table_builder_bloc.dart';
import 'columns_builder.dart';

part '../filter_menu/date_filter_menu.dart';
part '../filter_menu/string_filter_menu.dart';
part '../filter_menu/number_filter_menu.dart';

class TableBuilder<T extends Object> extends StatelessWidget {
  TableBuilder({
    super.key,
    required this.onRowTap,
    required List<TbColumn<T, dynamic>> theTbColumns,
    required List<T> theItems,
    required int theFreezedColumnsCount,
    required this.onFiltersChanged,
  }) : bloc = TableBuilderBloc<T>(
          theTbColumns: theTbColumns,
          theItems: theItems,
          theFreezedColumnsCount: theFreezedColumnsCount,
        );

  final void Function(T item) onRowTap;

  final void Function(List<TbColumn<T, dynamic>> columns) onFiltersChanged;
  final TableBuilderBloc<T> bloc;

  setItems(List<T> theItems) {
    bloc.add(TableBuilderEvent<T>.setItems(theItems));
  }

  removeFilter(TbColumn<T, dynamic> column) {
    bloc.add(TableBuilderEvent<T>.onClearFilterPressed(column));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TableBuilderBloc<T>>.value(
      value: bloc,
      child: BlocListener<TableBuilderBloc<T>, TableBuilderState<T>>(
        listenWhen: (previous, current) =>
            previous.filtersChanged != current.filtersChanged,
        listener: (context, state) {
          onFiltersChanged(state.tbColumns);
        },
        child: _Table<T>(onRowTap: onRowTap),
      ),
    );
  }
}

class _Table<T extends Object> extends StatefulWidget {
  const _Table({super.key, required this.onRowTap});
  final void Function(T item) onRowTap;

  @override
  State<_Table<T>> createState() => __TableState<T>();
}

class __TableState<T extends Object> extends State<_Table<T>> {
  late LinkedScrollControllerGroup _controllers;
  late ScrollController _scrollControllerLeft;
  late ScrollController _scrollControllerRight;

  late final TableBuilderBloc<T> bloc;

  @override
  void initState() {
    super.initState();
    _controllers = LinkedScrollControllerGroup();
    _scrollControllerLeft = _controllers.addAndGet();
    _scrollControllerRight = _controllers.addAndGet();
  }

  @override
  void dispose() {
    _scrollControllerLeft.dispose();
    _scrollControllerRight.dispose();
    super.dispose();
  }

  void setItems(List<T> items) {
    bloc.add(TableBuilderEvent.setItems(items));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TableBuilderBloc<T>, TableBuilderState<T>>(
      builder: (context, state) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return state.totalMinWidthOfAllColumns < constraints.maxWidth
                ? ColumnsBuilder(
                    availableWidth: constraints.maxWidth,
                    columns: state.tbColumns,
                    onRowTap: widget.onRowTap,
                  )
                : Row(
                    children: [
                      ColumnsBuilder(
                        columns: state.freezedColumns,
                        onRowTap: widget.onRowTap,
                        rightBorder: const BorderSide(),
                        scrollController: _scrollControllerLeft,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const ClampingScrollPhysics(),
                          child: ColumnsBuilder(
                            columns: state.reorderableColumns,
                            onRowTap: widget.onRowTap,
                            scrollController: _scrollControllerRight,
                          ),
                        ),
                      ),
                    ],
                  );
          },
        );
      },
    );
  }
}
