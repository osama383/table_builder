import 'package:table_builder/src/domain/tb_filter.dart';
import 'package:equatable/equatable.dart';

class Criterion<Type extends Object> extends Equatable {
  final Enum name;
  final bool Function(Type, Type) test;
  const Criterion({required this.name, required this.test});

  @override
  List<Object?> get props => [name];
}

class TbFilters<T extends Object> {
  List<T> filtered(
    List<T> itemsToFilter,
    List<TbFilter<T, dynamic>> filters,
  ) {
    List<T> filteredItems = [...itemsToFilter];
    for (final filter in filters) {
      for (final appliedCriterion in filter.appliedCriteria) {
        filteredItems = filteredItems.where(
          (customer) {
            return filter.performTest(
              customer,
              Criteria.criterion(appliedCriterion.name),
              appliedCriterion.target,
            );
          },
        ).toList();
      }
    }
    return filteredItems;
  }
}

class AppliedCriterion<Type extends Object> {
  final Enum name;
  final Type target;

  AppliedCriterion({required this.name, required this.target});
}

class TbFilter<T extends Object, Type extends Object> {
  final Type Function(T item) value;
  List<AppliedCriterion<Type>> appliedCriteria = [];

  TbFilter(this.value);

  bool performTest(T item, Criterion<Type> criterion, Type target) {
    return criterion.test(value(item), target);
  }
}

class Criteria {
  static Criterion<A> criterion<A extends Object>(Enum e) {
    if (e is StringCriteria) {
      return string(e) as Criterion<A>;
    }
    if (e is NumberCriteria) {
      return number(e) as Criterion<A>;
    }
    if (e is DateCriteria) {
      return date(e) as Criterion<A>;
    }
    throw Error();
  }

  static Criterion<String> string(StringCriteria e) {
    return e.when(
      equals: () => Criterion(
        name: e,
        test: (a, b) => a.toLowerCase() == b.toLowerCase(),
      ),
      contains: () => Criterion(
        name: e,
        test: (a, b) => a.toLowerCase().contains(b.toLowerCase()),
      ),
      beginsWith: () => Criterion(
        name: e,
        test: (a, b) => a.toLowerCase().startsWith(b.toLowerCase()),
      ),
      endsWith: () => Criterion(
        name: e,
        test: (a, b) => a.toLowerCase().endsWith(b.toLowerCase()),
      ),
    );
  }

  static Criterion<int> number(NumberCriteria e) {
    return e.when(
      equals: () => Criterion(
        name: e,
        test: (a, b) => a == b,
      ),
      doesNotEqual: () => Criterion(
        name: e,
        test: (a, b) => a != b,
      ),
      lessThan: () => Criterion(
        name: e,
        test: (a, b) => a < b,
      ),
      lessThanOrEqual: () => Criterion(
        name: e,
        test: (a, b) => a <= b,
      ),
      greaterThan: () => Criterion(
        name: e,
        test: (a, b) => a > b,
      ),
      greaterThanOrEqual: () => Criterion(
        name: e,
        test: (a, b) => a >= b,
      ),
    );
  }

  static Criterion<DateTime> date(DateCriteria e) {
    return e.when(
      isAfter: () => Criterion(name: e, test: (a, b) => a.isAfter(b)),
      isBefore: () => Criterion(name: e, test: (a, b) => a.isBefore(b)),
    );
  }
}
