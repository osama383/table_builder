enum StringCriteria {
  equals,
  contains,
  beginsWith,
  endsWith,
}

enum DateCriteria { isAfter, isBefore }

enum NumberCriteria {
  equals,
  doesNotEqual,
  lessThan,
  lessThanOrEqual,
  greaterThan,
  greaterThanOrEqual,
}

extension Abcs on DateCriteria {
  T when<T>({
    required T Function() isAfter,
    required T Function() isBefore,
  }) {
    switch (this) {
      case DateCriteria.isAfter:
        return isAfter();
      case DateCriteria.isBefore:
        return isBefore();
    }
  }
}

extension Abc on StringCriteria {
  T when<T>({
    required T Function() equals,
    required T Function() contains,
    required T Function() beginsWith,
    required T Function() endsWith,
  }) {
    switch (this) {
      case StringCriteria.equals:
        return equals();
      case StringCriteria.contains:
        return contains();
      case StringCriteria.beginsWith:
        return beginsWith();
      case StringCriteria.endsWith:
        return endsWith();
    }
  }
}

extension Abcd on NumberCriteria {
  T when<T>({
    required T Function() equals,
    required T Function() doesNotEqual,
    required T Function() lessThan,
    required T Function() lessThanOrEqual,
    required T Function() greaterThan,
    required T Function() greaterThanOrEqual,
  }) {
    switch (this) {
      case NumberCriteria.equals:
        return equals();
      case NumberCriteria.doesNotEqual:
        return doesNotEqual();
      case NumberCriteria.lessThan:
        return lessThan();
      case NumberCriteria.lessThanOrEqual:
        return lessThanOrEqual();
      case NumberCriteria.greaterThan:
        return greaterThan();
      case NumberCriteria.greaterThanOrEqual:
        return greaterThanOrEqual();
    }
  }
}
