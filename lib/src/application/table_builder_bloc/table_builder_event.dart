part of 'table_builder_bloc.dart';

@freezed
class TableBuilderEvent<T extends Object> with _$TableBuilderEvent<T> {
  const factory TableBuilderEvent.setItems(List<T> items) = _SetItems;
  const factory TableBuilderEvent.onSetFilterPressed(
    TbColumn<T, dynamic> column,
  ) = _OnSetFilterPressed;

  const factory TableBuilderEvent.onClearFilterPressed(
    TbColumn<T, dynamic> column,
  ) = _OnClearFilterPressed;

  const factory TableBuilderEvent.onItemHoverStart(
    T item,
  ) = _OnItemHoverStart;

  const factory TableBuilderEvent.onItemHoverEnd() = _OnItemHoverEnd;

  const factory TableBuilderEvent.onSortPressed({
    required TbColumn<T, dynamic> sortedColumn,
    required bool ascending,
  }) = _OnSortPressed;
}
