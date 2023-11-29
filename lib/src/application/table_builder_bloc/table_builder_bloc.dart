import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:table_builder/src/domain/sort.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:table_builder/src/domain/filters.dart';

import '../../domain/tb_column.dart';

part 'table_builder_event.dart';
part 'table_builder_state.dart';
part 'table_builder_bloc.freezed.dart';

class TableBuilderBloc<T extends Object>
    extends Bloc<TableBuilderEvent<T>, TableBuilderState<T>> {
  final _filteredColumnsStreamController =
      StreamController<List<TbColumn>>.broadcast();

  Stream<List<TbColumn>> get filteredColumnsStream =>
      _filteredColumnsStreamController.stream;

  TableBuilderBloc({
    required final List<TbColumn<T, dynamic>> theTbColumns,
    required final List<T> theItems,
    required final int theFreezedColumnsCount,
  }) : super(
          TableBuilderState.initial(
            tbColumns: theTbColumns,
            items: theItems,
            freezedColumnsCount: theFreezedColumnsCount,
          ),
        ) {
    on<TableBuilderEvent<T>>(
      (event, emit) {
        event.map(
          setItems: (event) {
            final filteredItems = TbFilters<T>().filtered(
              event.items,
              state.tbColumns.map((e) => e.filter).toList(),
            );

            final sortedAndFilteredItems = state.sortedColumnOption.fold(
              () => filteredItems,
              (sortedColumn) => TbSort<T>().sorted(
                filteredItems,
                state.ascending,
                sortedColumn,
              ),
            );

            emit(
              state.copyWith(
                items: event.items,
                filteredItems: sortedAndFilteredItems,
              ),
            );
          },
          onClearFilterPressed: (event) {
            final columns = [...state.tbColumns];
            final index = columns.indexOf(event.column);
            columns[index] = event.column..filter.appliedCriteria.clear();

            final filteredItems = TbFilters<T>().filtered(
              state.items,
              columns.map((e) => e.filter).toList(),
            );

            final sortedAndFilteredItems = state.sortedColumnOption.fold(
              () => filteredItems,
              (sortedColumn) => TbSort<T>().sorted(
                filteredItems,
                state.ascending,
                sortedColumn,
              ),
            );

            emit(
              state.copyWith(
                tbColumns: columns,
                filteredItems: sortedAndFilteredItems.toList(),
                filtersChanged: (state.filtersChanged + 1) % 3,
              ),
            );
          },
          onSetFilterPressed: (event) {
            final columns = [...state.tbColumns];
            final index = columns.indexOf(event.column);
            columns[index] = event.column;

            final filteredItems = TbFilters<T>().filtered(
              state.items,
              columns.map((e) => e.filter).toList(),
            );

            final sortedAndFilteredItems = state.sortedColumnOption.fold(
              () => filteredItems,
              (sortedColumn) => TbSort<T>().sorted(
                filteredItems,
                state.ascending,
                sortedColumn,
              ),
            );

            emit(
              state.copyWith(
                tbColumns: columns,
                filteredItems: sortedAndFilteredItems.toList(),
                filtersChanged: (state.filtersChanged + 1) % 3,
              ),
            );
          },
          onSortPressed: (event) {
            final filteredAndSortedItems = TbSort<T>().sorted(
              state.filteredItems,
              event.ascending,
              event.sortedColumn,
            );

            emit(
              state.copyWith(
                sortedColumnOption: some(event.sortedColumn),
                filteredItems: filteredAndSortedItems,
                ascending: event.ascending,
              ),
            );
          },
          onItemHoverStart: (event) {
            emit(state.copyWith(hoveredItemOption: some(event.item)));
          },
          onItemHoverEnd: (event) {
            emit(state.copyWith(hoveredItemOption: none()));
          },
        );
      },
    );
  }
}
