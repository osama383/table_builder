import 'package:table_builder/src/domain/tb_column.dart';

class TbSort<T extends Object> {
  List<T> sorted(
    List<T> itemsToSort,
    bool ascending,
    TbColumn<T, dynamic> column,
  ) {
    var result = [...itemsToSort];
    result.sort(
      (a, b) => column.filter.value(a).compareTo(
            column.filter.value(b),
          ),
    );
    if (!ascending) {
      result = result.reversed.toList();
    }
    return result;
  }
}
