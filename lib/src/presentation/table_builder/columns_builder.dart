import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/table_builder_bloc/table_builder_bloc.dart';
import '../../domain/tb_column.dart';
import 'column_header.dart';

class ColumnsBuilder<T extends Object> extends StatelessWidget {
  final ScrollController? scrollController;
  final List<TbColumn<T, dynamic>> columns;
  final void Function(T item) onRowTap;
  final BorderSide? rightBorder;

  final double? availableWidth;

  const ColumnsBuilder({
    super.key,
    this.scrollController,
    this.rightBorder,
    this.availableWidth,
    required this.columns,
    required this.onRowTap,
  });

  double get totalMinWidth {
    return columns.fold(0.0, (width, column) => width + column.minWidth);
  }

  int get totalFlex {
    return columns.fold(0, (flex, column) => flex + column.flex);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TableBuilderBloc<T>, TableBuilderState<T>>(
      builder: (context, state) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                SizedBox(
                  height: 60,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 0.5,
                          color: Colors.grey.shade400,
                        ),
                        right: rightBorder ?? BorderSide.none,
                      ),
                    ),
                    child: Row(
                      children: [
                        ...columns.map(
                          (column) => SizedBox(
                            width: availableWidth == null
                                ? column.minWidth
                                : column.minWidth +
                                    ((availableWidth! - totalMinWidth) *
                                            column.flex) /
                                        totalFlex,
                            child: TbColumnHeader(column),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: availableWidth ?? totalMinWidth + 1,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      controller: scrollController,
                      itemCount: state.filteredItems.length,
                      itemBuilder: (context, index) {
                        final item = state.filteredItems[index];
                        return MouseRegion(
                          cursor: SystemMouseCursors.click,
                          onEnter: (_) {
                            context
                                .read<TableBuilderBloc<T>>()
                                .add(TableBuilderEvent.onItemHoverStart(item));
                          },
                          onExit: (_) {
                            context
                                .read<TableBuilderBloc<T>>()
                                .add(const TableBuilderEvent.onItemHoverEnd());
                          },
                          child: InkWell(
                            onTap: () => onRowTap(item),
                            child: SizedBox(
                              height: 60,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: state.hoveredItemOption.fold(
                                    () => null,
                                    (a) =>
                                        a == item ? Colors.grey.shade300 : null,
                                  ),
                                  border: Border(
                                    bottom: BorderSide(
                                      width: 0.5,
                                      color: Colors.grey.shade400,
                                    ),
                                    right: rightBorder ?? BorderSide.none,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    ...columns.map(
                                      (column) => Container(
                                        width: availableWidth == null
                                            ? column.minWidth
                                            : column.minWidth +
                                                ((availableWidth! -
                                                            totalMinWidth) *
                                                        column.flex) /
                                                    totalFlex,
                                        padding: column.padding,
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: column.cellWidget(item),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
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
