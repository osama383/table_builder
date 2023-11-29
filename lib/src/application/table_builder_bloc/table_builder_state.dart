part of 'table_builder_bloc.dart';

@freezed
class TableBuilderState<T extends Object> with _$TableBuilderState<T> {
  const TableBuilderState._();
  const factory TableBuilderState({
    required List<T> items,
    required List<T> filteredItems,
    required Option<TbColumn<T, dynamic>> sortedColumnOption,
    required Option<T> hoveredItemOption,
    required List<TbColumn<T, dynamic>> tbColumns,
    required int freezedColumnsCount,
    required bool ascending,
    required int filtersChanged,
  }) = _TableBuilderState;

  factory TableBuilderState.initial({
    required List<TbColumn<T, dynamic>> tbColumns,
    required List<T> items,
    required int freezedColumnsCount,
  }) =>
      _TableBuilderState<T>(
        tbColumns: tbColumns,
        items: items,
        filteredItems: items,
        freezedColumnsCount: freezedColumnsCount,
        hoveredItemOption: none(),
        sortedColumnOption: none(),
        ascending: true,
        filtersChanged: 0,
      );

  List<TbColumn<T, dynamic>> get freezedColumns {
    return tbColumns.getRange(0, freezedColumnsCount).toList();
  }

  List<TbColumn<T, dynamic>> get reorderableColumns {
    return tbColumns.getRange(freezedColumnsCount, tbColumns.length).toList();
  }

  double get totalMinWidthOfAllColumns {
    return tbColumns.fold(
      0,
      (previousValue, column) => previousValue + column.minWidth,
    );
  }
}
