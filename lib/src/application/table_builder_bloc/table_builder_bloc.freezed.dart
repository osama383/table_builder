// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_builder_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TableBuilderEvent<T extends Object> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> items) setItems,
    required TResult Function(TbColumn<T, dynamic> column) onSetFilterPressed,
    required TResult Function(TbColumn<T, dynamic> column) onClearFilterPressed,
    required TResult Function(T item) onItemHoverStart,
    required TResult Function() onItemHoverEnd,
    required TResult Function(TbColumn<T, dynamic> sortedColumn, bool ascending)
        onSortPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> items)? setItems,
    TResult? Function(TbColumn<T, dynamic> column)? onSetFilterPressed,
    TResult? Function(TbColumn<T, dynamic> column)? onClearFilterPressed,
    TResult? Function(T item)? onItemHoverStart,
    TResult? Function()? onItemHoverEnd,
    TResult? Function(TbColumn<T, dynamic> sortedColumn, bool ascending)?
        onSortPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> items)? setItems,
    TResult Function(TbColumn<T, dynamic> column)? onSetFilterPressed,
    TResult Function(TbColumn<T, dynamic> column)? onClearFilterPressed,
    TResult Function(T item)? onItemHoverStart,
    TResult Function()? onItemHoverEnd,
    TResult Function(TbColumn<T, dynamic> sortedColumn, bool ascending)?
        onSortPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetItems<T> value) setItems,
    required TResult Function(_OnSetFilterPressed<T> value) onSetFilterPressed,
    required TResult Function(_OnClearFilterPressed<T> value)
        onClearFilterPressed,
    required TResult Function(_OnItemHoverStart<T> value) onItemHoverStart,
    required TResult Function(_OnItemHoverEnd<T> value) onItemHoverEnd,
    required TResult Function(_OnSortPressed<T> value) onSortPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetItems<T> value)? setItems,
    TResult? Function(_OnSetFilterPressed<T> value)? onSetFilterPressed,
    TResult? Function(_OnClearFilterPressed<T> value)? onClearFilterPressed,
    TResult? Function(_OnItemHoverStart<T> value)? onItemHoverStart,
    TResult? Function(_OnItemHoverEnd<T> value)? onItemHoverEnd,
    TResult? Function(_OnSortPressed<T> value)? onSortPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetItems<T> value)? setItems,
    TResult Function(_OnSetFilterPressed<T> value)? onSetFilterPressed,
    TResult Function(_OnClearFilterPressed<T> value)? onClearFilterPressed,
    TResult Function(_OnItemHoverStart<T> value)? onItemHoverStart,
    TResult Function(_OnItemHoverEnd<T> value)? onItemHoverEnd,
    TResult Function(_OnSortPressed<T> value)? onSortPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableBuilderEventCopyWith<T extends Object, $Res> {
  factory $TableBuilderEventCopyWith(TableBuilderEvent<T> value,
          $Res Function(TableBuilderEvent<T>) then) =
      _$TableBuilderEventCopyWithImpl<T, $Res, TableBuilderEvent<T>>;
}

/// @nodoc
class _$TableBuilderEventCopyWithImpl<T extends Object, $Res,
        $Val extends TableBuilderEvent<T>>
    implements $TableBuilderEventCopyWith<T, $Res> {
  _$TableBuilderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetItemsImplCopyWith<T extends Object, $Res> {
  factory _$$SetItemsImplCopyWith(
          _$SetItemsImpl<T> value, $Res Function(_$SetItemsImpl<T>) then) =
      __$$SetItemsImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<T> items});
}

/// @nodoc
class __$$SetItemsImplCopyWithImpl<T extends Object, $Res>
    extends _$TableBuilderEventCopyWithImpl<T, $Res, _$SetItemsImpl<T>>
    implements _$$SetItemsImplCopyWith<T, $Res> {
  __$$SetItemsImplCopyWithImpl(
      _$SetItemsImpl<T> _value, $Res Function(_$SetItemsImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$SetItemsImpl<T>(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$SetItemsImpl<T extends Object> implements _SetItems<T> {
  const _$SetItemsImpl(final List<T> items) : _items = items;

  final List<T> _items;
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'TableBuilderEvent<$T>.setItems(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetItemsImpl<T> &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetItemsImplCopyWith<T, _$SetItemsImpl<T>> get copyWith =>
      __$$SetItemsImplCopyWithImpl<T, _$SetItemsImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> items) setItems,
    required TResult Function(TbColumn<T, dynamic> column) onSetFilterPressed,
    required TResult Function(TbColumn<T, dynamic> column) onClearFilterPressed,
    required TResult Function(T item) onItemHoverStart,
    required TResult Function() onItemHoverEnd,
    required TResult Function(TbColumn<T, dynamic> sortedColumn, bool ascending)
        onSortPressed,
  }) {
    return setItems(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> items)? setItems,
    TResult? Function(TbColumn<T, dynamic> column)? onSetFilterPressed,
    TResult? Function(TbColumn<T, dynamic> column)? onClearFilterPressed,
    TResult? Function(T item)? onItemHoverStart,
    TResult? Function()? onItemHoverEnd,
    TResult? Function(TbColumn<T, dynamic> sortedColumn, bool ascending)?
        onSortPressed,
  }) {
    return setItems?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> items)? setItems,
    TResult Function(TbColumn<T, dynamic> column)? onSetFilterPressed,
    TResult Function(TbColumn<T, dynamic> column)? onClearFilterPressed,
    TResult Function(T item)? onItemHoverStart,
    TResult Function()? onItemHoverEnd,
    TResult Function(TbColumn<T, dynamic> sortedColumn, bool ascending)?
        onSortPressed,
    required TResult orElse(),
  }) {
    if (setItems != null) {
      return setItems(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetItems<T> value) setItems,
    required TResult Function(_OnSetFilterPressed<T> value) onSetFilterPressed,
    required TResult Function(_OnClearFilterPressed<T> value)
        onClearFilterPressed,
    required TResult Function(_OnItemHoverStart<T> value) onItemHoverStart,
    required TResult Function(_OnItemHoverEnd<T> value) onItemHoverEnd,
    required TResult Function(_OnSortPressed<T> value) onSortPressed,
  }) {
    return setItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetItems<T> value)? setItems,
    TResult? Function(_OnSetFilterPressed<T> value)? onSetFilterPressed,
    TResult? Function(_OnClearFilterPressed<T> value)? onClearFilterPressed,
    TResult? Function(_OnItemHoverStart<T> value)? onItemHoverStart,
    TResult? Function(_OnItemHoverEnd<T> value)? onItemHoverEnd,
    TResult? Function(_OnSortPressed<T> value)? onSortPressed,
  }) {
    return setItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetItems<T> value)? setItems,
    TResult Function(_OnSetFilterPressed<T> value)? onSetFilterPressed,
    TResult Function(_OnClearFilterPressed<T> value)? onClearFilterPressed,
    TResult Function(_OnItemHoverStart<T> value)? onItemHoverStart,
    TResult Function(_OnItemHoverEnd<T> value)? onItemHoverEnd,
    TResult Function(_OnSortPressed<T> value)? onSortPressed,
    required TResult orElse(),
  }) {
    if (setItems != null) {
      return setItems(this);
    }
    return orElse();
  }
}

abstract class _SetItems<T extends Object> implements TableBuilderEvent<T> {
  const factory _SetItems(final List<T> items) = _$SetItemsImpl<T>;

  List<T> get items;
  @JsonKey(ignore: true)
  _$$SetItemsImplCopyWith<T, _$SetItemsImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSetFilterPressedImplCopyWith<T extends Object, $Res> {
  factory _$$OnSetFilterPressedImplCopyWith(_$OnSetFilterPressedImpl<T> value,
          $Res Function(_$OnSetFilterPressedImpl<T>) then) =
      __$$OnSetFilterPressedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({TbColumn<T, dynamic> column});
}

/// @nodoc
class __$$OnSetFilterPressedImplCopyWithImpl<T extends Object, $Res>
    extends _$TableBuilderEventCopyWithImpl<T, $Res,
        _$OnSetFilterPressedImpl<T>>
    implements _$$OnSetFilterPressedImplCopyWith<T, $Res> {
  __$$OnSetFilterPressedImplCopyWithImpl(_$OnSetFilterPressedImpl<T> _value,
      $Res Function(_$OnSetFilterPressedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? column = null,
  }) {
    return _then(_$OnSetFilterPressedImpl<T>(
      null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as TbColumn<T, dynamic>,
    ));
  }
}

/// @nodoc

class _$OnSetFilterPressedImpl<T extends Object>
    implements _OnSetFilterPressed<T> {
  const _$OnSetFilterPressedImpl(this.column);

  @override
  final TbColumn<T, dynamic> column;

  @override
  String toString() {
    return 'TableBuilderEvent<$T>.onSetFilterPressed(column: $column)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSetFilterPressedImpl<T> &&
            (identical(other.column, column) || other.column == column));
  }

  @override
  int get hashCode => Object.hash(runtimeType, column);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSetFilterPressedImplCopyWith<T, _$OnSetFilterPressedImpl<T>>
      get copyWith => __$$OnSetFilterPressedImplCopyWithImpl<T,
          _$OnSetFilterPressedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> items) setItems,
    required TResult Function(TbColumn<T, dynamic> column) onSetFilterPressed,
    required TResult Function(TbColumn<T, dynamic> column) onClearFilterPressed,
    required TResult Function(T item) onItemHoverStart,
    required TResult Function() onItemHoverEnd,
    required TResult Function(TbColumn<T, dynamic> sortedColumn, bool ascending)
        onSortPressed,
  }) {
    return onSetFilterPressed(column);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> items)? setItems,
    TResult? Function(TbColumn<T, dynamic> column)? onSetFilterPressed,
    TResult? Function(TbColumn<T, dynamic> column)? onClearFilterPressed,
    TResult? Function(T item)? onItemHoverStart,
    TResult? Function()? onItemHoverEnd,
    TResult? Function(TbColumn<T, dynamic> sortedColumn, bool ascending)?
        onSortPressed,
  }) {
    return onSetFilterPressed?.call(column);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> items)? setItems,
    TResult Function(TbColumn<T, dynamic> column)? onSetFilterPressed,
    TResult Function(TbColumn<T, dynamic> column)? onClearFilterPressed,
    TResult Function(T item)? onItemHoverStart,
    TResult Function()? onItemHoverEnd,
    TResult Function(TbColumn<T, dynamic> sortedColumn, bool ascending)?
        onSortPressed,
    required TResult orElse(),
  }) {
    if (onSetFilterPressed != null) {
      return onSetFilterPressed(column);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetItems<T> value) setItems,
    required TResult Function(_OnSetFilterPressed<T> value) onSetFilterPressed,
    required TResult Function(_OnClearFilterPressed<T> value)
        onClearFilterPressed,
    required TResult Function(_OnItemHoverStart<T> value) onItemHoverStart,
    required TResult Function(_OnItemHoverEnd<T> value) onItemHoverEnd,
    required TResult Function(_OnSortPressed<T> value) onSortPressed,
  }) {
    return onSetFilterPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetItems<T> value)? setItems,
    TResult? Function(_OnSetFilterPressed<T> value)? onSetFilterPressed,
    TResult? Function(_OnClearFilterPressed<T> value)? onClearFilterPressed,
    TResult? Function(_OnItemHoverStart<T> value)? onItemHoverStart,
    TResult? Function(_OnItemHoverEnd<T> value)? onItemHoverEnd,
    TResult? Function(_OnSortPressed<T> value)? onSortPressed,
  }) {
    return onSetFilterPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetItems<T> value)? setItems,
    TResult Function(_OnSetFilterPressed<T> value)? onSetFilterPressed,
    TResult Function(_OnClearFilterPressed<T> value)? onClearFilterPressed,
    TResult Function(_OnItemHoverStart<T> value)? onItemHoverStart,
    TResult Function(_OnItemHoverEnd<T> value)? onItemHoverEnd,
    TResult Function(_OnSortPressed<T> value)? onSortPressed,
    required TResult orElse(),
  }) {
    if (onSetFilterPressed != null) {
      return onSetFilterPressed(this);
    }
    return orElse();
  }
}

abstract class _OnSetFilterPressed<T extends Object>
    implements TableBuilderEvent<T> {
  const factory _OnSetFilterPressed(final TbColumn<T, dynamic> column) =
      _$OnSetFilterPressedImpl<T>;

  TbColumn<T, dynamic> get column;
  @JsonKey(ignore: true)
  _$$OnSetFilterPressedImplCopyWith<T, _$OnSetFilterPressedImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnClearFilterPressedImplCopyWith<T extends Object, $Res> {
  factory _$$OnClearFilterPressedImplCopyWith(
          _$OnClearFilterPressedImpl<T> value,
          $Res Function(_$OnClearFilterPressedImpl<T>) then) =
      __$$OnClearFilterPressedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({TbColumn<T, dynamic> column});
}

/// @nodoc
class __$$OnClearFilterPressedImplCopyWithImpl<T extends Object, $Res>
    extends _$TableBuilderEventCopyWithImpl<T, $Res,
        _$OnClearFilterPressedImpl<T>>
    implements _$$OnClearFilterPressedImplCopyWith<T, $Res> {
  __$$OnClearFilterPressedImplCopyWithImpl(_$OnClearFilterPressedImpl<T> _value,
      $Res Function(_$OnClearFilterPressedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? column = null,
  }) {
    return _then(_$OnClearFilterPressedImpl<T>(
      null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as TbColumn<T, dynamic>,
    ));
  }
}

/// @nodoc

class _$OnClearFilterPressedImpl<T extends Object>
    implements _OnClearFilterPressed<T> {
  const _$OnClearFilterPressedImpl(this.column);

  @override
  final TbColumn<T, dynamic> column;

  @override
  String toString() {
    return 'TableBuilderEvent<$T>.onClearFilterPressed(column: $column)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnClearFilterPressedImpl<T> &&
            (identical(other.column, column) || other.column == column));
  }

  @override
  int get hashCode => Object.hash(runtimeType, column);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnClearFilterPressedImplCopyWith<T, _$OnClearFilterPressedImpl<T>>
      get copyWith => __$$OnClearFilterPressedImplCopyWithImpl<T,
          _$OnClearFilterPressedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> items) setItems,
    required TResult Function(TbColumn<T, dynamic> column) onSetFilterPressed,
    required TResult Function(TbColumn<T, dynamic> column) onClearFilterPressed,
    required TResult Function(T item) onItemHoverStart,
    required TResult Function() onItemHoverEnd,
    required TResult Function(TbColumn<T, dynamic> sortedColumn, bool ascending)
        onSortPressed,
  }) {
    return onClearFilterPressed(column);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> items)? setItems,
    TResult? Function(TbColumn<T, dynamic> column)? onSetFilterPressed,
    TResult? Function(TbColumn<T, dynamic> column)? onClearFilterPressed,
    TResult? Function(T item)? onItemHoverStart,
    TResult? Function()? onItemHoverEnd,
    TResult? Function(TbColumn<T, dynamic> sortedColumn, bool ascending)?
        onSortPressed,
  }) {
    return onClearFilterPressed?.call(column);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> items)? setItems,
    TResult Function(TbColumn<T, dynamic> column)? onSetFilterPressed,
    TResult Function(TbColumn<T, dynamic> column)? onClearFilterPressed,
    TResult Function(T item)? onItemHoverStart,
    TResult Function()? onItemHoverEnd,
    TResult Function(TbColumn<T, dynamic> sortedColumn, bool ascending)?
        onSortPressed,
    required TResult orElse(),
  }) {
    if (onClearFilterPressed != null) {
      return onClearFilterPressed(column);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetItems<T> value) setItems,
    required TResult Function(_OnSetFilterPressed<T> value) onSetFilterPressed,
    required TResult Function(_OnClearFilterPressed<T> value)
        onClearFilterPressed,
    required TResult Function(_OnItemHoverStart<T> value) onItemHoverStart,
    required TResult Function(_OnItemHoverEnd<T> value) onItemHoverEnd,
    required TResult Function(_OnSortPressed<T> value) onSortPressed,
  }) {
    return onClearFilterPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetItems<T> value)? setItems,
    TResult? Function(_OnSetFilterPressed<T> value)? onSetFilterPressed,
    TResult? Function(_OnClearFilterPressed<T> value)? onClearFilterPressed,
    TResult? Function(_OnItemHoverStart<T> value)? onItemHoverStart,
    TResult? Function(_OnItemHoverEnd<T> value)? onItemHoverEnd,
    TResult? Function(_OnSortPressed<T> value)? onSortPressed,
  }) {
    return onClearFilterPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetItems<T> value)? setItems,
    TResult Function(_OnSetFilterPressed<T> value)? onSetFilterPressed,
    TResult Function(_OnClearFilterPressed<T> value)? onClearFilterPressed,
    TResult Function(_OnItemHoverStart<T> value)? onItemHoverStart,
    TResult Function(_OnItemHoverEnd<T> value)? onItemHoverEnd,
    TResult Function(_OnSortPressed<T> value)? onSortPressed,
    required TResult orElse(),
  }) {
    if (onClearFilterPressed != null) {
      return onClearFilterPressed(this);
    }
    return orElse();
  }
}

abstract class _OnClearFilterPressed<T extends Object>
    implements TableBuilderEvent<T> {
  const factory _OnClearFilterPressed(final TbColumn<T, dynamic> column) =
      _$OnClearFilterPressedImpl<T>;

  TbColumn<T, dynamic> get column;
  @JsonKey(ignore: true)
  _$$OnClearFilterPressedImplCopyWith<T, _$OnClearFilterPressedImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnItemHoverStartImplCopyWith<T extends Object, $Res> {
  factory _$$OnItemHoverStartImplCopyWith(_$OnItemHoverStartImpl<T> value,
          $Res Function(_$OnItemHoverStartImpl<T>) then) =
      __$$OnItemHoverStartImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T item});
}

/// @nodoc
class __$$OnItemHoverStartImplCopyWithImpl<T extends Object, $Res>
    extends _$TableBuilderEventCopyWithImpl<T, $Res, _$OnItemHoverStartImpl<T>>
    implements _$$OnItemHoverStartImplCopyWith<T, $Res> {
  __$$OnItemHoverStartImplCopyWithImpl(_$OnItemHoverStartImpl<T> _value,
      $Res Function(_$OnItemHoverStartImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$OnItemHoverStartImpl<T>(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$OnItemHoverStartImpl<T extends Object> implements _OnItemHoverStart<T> {
  const _$OnItemHoverStartImpl(this.item);

  @override
  final T item;

  @override
  String toString() {
    return 'TableBuilderEvent<$T>.onItemHoverStart(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnItemHoverStartImpl<T> &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnItemHoverStartImplCopyWith<T, _$OnItemHoverStartImpl<T>> get copyWith =>
      __$$OnItemHoverStartImplCopyWithImpl<T, _$OnItemHoverStartImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> items) setItems,
    required TResult Function(TbColumn<T, dynamic> column) onSetFilterPressed,
    required TResult Function(TbColumn<T, dynamic> column) onClearFilterPressed,
    required TResult Function(T item) onItemHoverStart,
    required TResult Function() onItemHoverEnd,
    required TResult Function(TbColumn<T, dynamic> sortedColumn, bool ascending)
        onSortPressed,
  }) {
    return onItemHoverStart(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> items)? setItems,
    TResult? Function(TbColumn<T, dynamic> column)? onSetFilterPressed,
    TResult? Function(TbColumn<T, dynamic> column)? onClearFilterPressed,
    TResult? Function(T item)? onItemHoverStart,
    TResult? Function()? onItemHoverEnd,
    TResult? Function(TbColumn<T, dynamic> sortedColumn, bool ascending)?
        onSortPressed,
  }) {
    return onItemHoverStart?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> items)? setItems,
    TResult Function(TbColumn<T, dynamic> column)? onSetFilterPressed,
    TResult Function(TbColumn<T, dynamic> column)? onClearFilterPressed,
    TResult Function(T item)? onItemHoverStart,
    TResult Function()? onItemHoverEnd,
    TResult Function(TbColumn<T, dynamic> sortedColumn, bool ascending)?
        onSortPressed,
    required TResult orElse(),
  }) {
    if (onItemHoverStart != null) {
      return onItemHoverStart(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetItems<T> value) setItems,
    required TResult Function(_OnSetFilterPressed<T> value) onSetFilterPressed,
    required TResult Function(_OnClearFilterPressed<T> value)
        onClearFilterPressed,
    required TResult Function(_OnItemHoverStart<T> value) onItemHoverStart,
    required TResult Function(_OnItemHoverEnd<T> value) onItemHoverEnd,
    required TResult Function(_OnSortPressed<T> value) onSortPressed,
  }) {
    return onItemHoverStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetItems<T> value)? setItems,
    TResult? Function(_OnSetFilterPressed<T> value)? onSetFilterPressed,
    TResult? Function(_OnClearFilterPressed<T> value)? onClearFilterPressed,
    TResult? Function(_OnItemHoverStart<T> value)? onItemHoverStart,
    TResult? Function(_OnItemHoverEnd<T> value)? onItemHoverEnd,
    TResult? Function(_OnSortPressed<T> value)? onSortPressed,
  }) {
    return onItemHoverStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetItems<T> value)? setItems,
    TResult Function(_OnSetFilterPressed<T> value)? onSetFilterPressed,
    TResult Function(_OnClearFilterPressed<T> value)? onClearFilterPressed,
    TResult Function(_OnItemHoverStart<T> value)? onItemHoverStart,
    TResult Function(_OnItemHoverEnd<T> value)? onItemHoverEnd,
    TResult Function(_OnSortPressed<T> value)? onSortPressed,
    required TResult orElse(),
  }) {
    if (onItemHoverStart != null) {
      return onItemHoverStart(this);
    }
    return orElse();
  }
}

abstract class _OnItemHoverStart<T extends Object>
    implements TableBuilderEvent<T> {
  const factory _OnItemHoverStart(final T item) = _$OnItemHoverStartImpl<T>;

  T get item;
  @JsonKey(ignore: true)
  _$$OnItemHoverStartImplCopyWith<T, _$OnItemHoverStartImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnItemHoverEndImplCopyWith<T extends Object, $Res> {
  factory _$$OnItemHoverEndImplCopyWith(_$OnItemHoverEndImpl<T> value,
          $Res Function(_$OnItemHoverEndImpl<T>) then) =
      __$$OnItemHoverEndImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$OnItemHoverEndImplCopyWithImpl<T extends Object, $Res>
    extends _$TableBuilderEventCopyWithImpl<T, $Res, _$OnItemHoverEndImpl<T>>
    implements _$$OnItemHoverEndImplCopyWith<T, $Res> {
  __$$OnItemHoverEndImplCopyWithImpl(_$OnItemHoverEndImpl<T> _value,
      $Res Function(_$OnItemHoverEndImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnItemHoverEndImpl<T extends Object> implements _OnItemHoverEnd<T> {
  const _$OnItemHoverEndImpl();

  @override
  String toString() {
    return 'TableBuilderEvent<$T>.onItemHoverEnd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnItemHoverEndImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> items) setItems,
    required TResult Function(TbColumn<T, dynamic> column) onSetFilterPressed,
    required TResult Function(TbColumn<T, dynamic> column) onClearFilterPressed,
    required TResult Function(T item) onItemHoverStart,
    required TResult Function() onItemHoverEnd,
    required TResult Function(TbColumn<T, dynamic> sortedColumn, bool ascending)
        onSortPressed,
  }) {
    return onItemHoverEnd();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> items)? setItems,
    TResult? Function(TbColumn<T, dynamic> column)? onSetFilterPressed,
    TResult? Function(TbColumn<T, dynamic> column)? onClearFilterPressed,
    TResult? Function(T item)? onItemHoverStart,
    TResult? Function()? onItemHoverEnd,
    TResult? Function(TbColumn<T, dynamic> sortedColumn, bool ascending)?
        onSortPressed,
  }) {
    return onItemHoverEnd?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> items)? setItems,
    TResult Function(TbColumn<T, dynamic> column)? onSetFilterPressed,
    TResult Function(TbColumn<T, dynamic> column)? onClearFilterPressed,
    TResult Function(T item)? onItemHoverStart,
    TResult Function()? onItemHoverEnd,
    TResult Function(TbColumn<T, dynamic> sortedColumn, bool ascending)?
        onSortPressed,
    required TResult orElse(),
  }) {
    if (onItemHoverEnd != null) {
      return onItemHoverEnd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetItems<T> value) setItems,
    required TResult Function(_OnSetFilterPressed<T> value) onSetFilterPressed,
    required TResult Function(_OnClearFilterPressed<T> value)
        onClearFilterPressed,
    required TResult Function(_OnItemHoverStart<T> value) onItemHoverStart,
    required TResult Function(_OnItemHoverEnd<T> value) onItemHoverEnd,
    required TResult Function(_OnSortPressed<T> value) onSortPressed,
  }) {
    return onItemHoverEnd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetItems<T> value)? setItems,
    TResult? Function(_OnSetFilterPressed<T> value)? onSetFilterPressed,
    TResult? Function(_OnClearFilterPressed<T> value)? onClearFilterPressed,
    TResult? Function(_OnItemHoverStart<T> value)? onItemHoverStart,
    TResult? Function(_OnItemHoverEnd<T> value)? onItemHoverEnd,
    TResult? Function(_OnSortPressed<T> value)? onSortPressed,
  }) {
    return onItemHoverEnd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetItems<T> value)? setItems,
    TResult Function(_OnSetFilterPressed<T> value)? onSetFilterPressed,
    TResult Function(_OnClearFilterPressed<T> value)? onClearFilterPressed,
    TResult Function(_OnItemHoverStart<T> value)? onItemHoverStart,
    TResult Function(_OnItemHoverEnd<T> value)? onItemHoverEnd,
    TResult Function(_OnSortPressed<T> value)? onSortPressed,
    required TResult orElse(),
  }) {
    if (onItemHoverEnd != null) {
      return onItemHoverEnd(this);
    }
    return orElse();
  }
}

abstract class _OnItemHoverEnd<T extends Object>
    implements TableBuilderEvent<T> {
  const factory _OnItemHoverEnd() = _$OnItemHoverEndImpl<T>;
}

/// @nodoc
abstract class _$$OnSortPressedImplCopyWith<T extends Object, $Res> {
  factory _$$OnSortPressedImplCopyWith(_$OnSortPressedImpl<T> value,
          $Res Function(_$OnSortPressedImpl<T>) then) =
      __$$OnSortPressedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({TbColumn<T, dynamic> sortedColumn, bool ascending});
}

/// @nodoc
class __$$OnSortPressedImplCopyWithImpl<T extends Object, $Res>
    extends _$TableBuilderEventCopyWithImpl<T, $Res, _$OnSortPressedImpl<T>>
    implements _$$OnSortPressedImplCopyWith<T, $Res> {
  __$$OnSortPressedImplCopyWithImpl(_$OnSortPressedImpl<T> _value,
      $Res Function(_$OnSortPressedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortedColumn = null,
    Object? ascending = null,
  }) {
    return _then(_$OnSortPressedImpl<T>(
      sortedColumn: null == sortedColumn
          ? _value.sortedColumn
          : sortedColumn // ignore: cast_nullable_to_non_nullable
              as TbColumn<T, dynamic>,
      ascending: null == ascending
          ? _value.ascending
          : ascending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnSortPressedImpl<T extends Object> implements _OnSortPressed<T> {
  const _$OnSortPressedImpl(
      {required this.sortedColumn, required this.ascending});

  @override
  final TbColumn<T, dynamic> sortedColumn;
  @override
  final bool ascending;

  @override
  String toString() {
    return 'TableBuilderEvent<$T>.onSortPressed(sortedColumn: $sortedColumn, ascending: $ascending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSortPressedImpl<T> &&
            (identical(other.sortedColumn, sortedColumn) ||
                other.sortedColumn == sortedColumn) &&
            (identical(other.ascending, ascending) ||
                other.ascending == ascending));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortedColumn, ascending);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSortPressedImplCopyWith<T, _$OnSortPressedImpl<T>> get copyWith =>
      __$$OnSortPressedImplCopyWithImpl<T, _$OnSortPressedImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> items) setItems,
    required TResult Function(TbColumn<T, dynamic> column) onSetFilterPressed,
    required TResult Function(TbColumn<T, dynamic> column) onClearFilterPressed,
    required TResult Function(T item) onItemHoverStart,
    required TResult Function() onItemHoverEnd,
    required TResult Function(TbColumn<T, dynamic> sortedColumn, bool ascending)
        onSortPressed,
  }) {
    return onSortPressed(sortedColumn, ascending);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<T> items)? setItems,
    TResult? Function(TbColumn<T, dynamic> column)? onSetFilterPressed,
    TResult? Function(TbColumn<T, dynamic> column)? onClearFilterPressed,
    TResult? Function(T item)? onItemHoverStart,
    TResult? Function()? onItemHoverEnd,
    TResult? Function(TbColumn<T, dynamic> sortedColumn, bool ascending)?
        onSortPressed,
  }) {
    return onSortPressed?.call(sortedColumn, ascending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> items)? setItems,
    TResult Function(TbColumn<T, dynamic> column)? onSetFilterPressed,
    TResult Function(TbColumn<T, dynamic> column)? onClearFilterPressed,
    TResult Function(T item)? onItemHoverStart,
    TResult Function()? onItemHoverEnd,
    TResult Function(TbColumn<T, dynamic> sortedColumn, bool ascending)?
        onSortPressed,
    required TResult orElse(),
  }) {
    if (onSortPressed != null) {
      return onSortPressed(sortedColumn, ascending);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetItems<T> value) setItems,
    required TResult Function(_OnSetFilterPressed<T> value) onSetFilterPressed,
    required TResult Function(_OnClearFilterPressed<T> value)
        onClearFilterPressed,
    required TResult Function(_OnItemHoverStart<T> value) onItemHoverStart,
    required TResult Function(_OnItemHoverEnd<T> value) onItemHoverEnd,
    required TResult Function(_OnSortPressed<T> value) onSortPressed,
  }) {
    return onSortPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetItems<T> value)? setItems,
    TResult? Function(_OnSetFilterPressed<T> value)? onSetFilterPressed,
    TResult? Function(_OnClearFilterPressed<T> value)? onClearFilterPressed,
    TResult? Function(_OnItemHoverStart<T> value)? onItemHoverStart,
    TResult? Function(_OnItemHoverEnd<T> value)? onItemHoverEnd,
    TResult? Function(_OnSortPressed<T> value)? onSortPressed,
  }) {
    return onSortPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetItems<T> value)? setItems,
    TResult Function(_OnSetFilterPressed<T> value)? onSetFilterPressed,
    TResult Function(_OnClearFilterPressed<T> value)? onClearFilterPressed,
    TResult Function(_OnItemHoverStart<T> value)? onItemHoverStart,
    TResult Function(_OnItemHoverEnd<T> value)? onItemHoverEnd,
    TResult Function(_OnSortPressed<T> value)? onSortPressed,
    required TResult orElse(),
  }) {
    if (onSortPressed != null) {
      return onSortPressed(this);
    }
    return orElse();
  }
}

abstract class _OnSortPressed<T extends Object>
    implements TableBuilderEvent<T> {
  const factory _OnSortPressed(
      {required final TbColumn<T, dynamic> sortedColumn,
      required final bool ascending}) = _$OnSortPressedImpl<T>;

  TbColumn<T, dynamic> get sortedColumn;
  bool get ascending;
  @JsonKey(ignore: true)
  _$$OnSortPressedImplCopyWith<T, _$OnSortPressedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TableBuilderState<T extends Object> {
  List<T> get items => throw _privateConstructorUsedError;
  List<T> get filteredItems => throw _privateConstructorUsedError;
  Option<TbColumn<T, dynamic>> get sortedColumnOption =>
      throw _privateConstructorUsedError;
  Option<T> get hoveredItemOption => throw _privateConstructorUsedError;
  List<TbColumn<T, dynamic>> get tbColumns =>
      throw _privateConstructorUsedError;
  int get freezedColumnsCount => throw _privateConstructorUsedError;
  bool get ascending => throw _privateConstructorUsedError;
  int get filtersChanged => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TableBuilderStateCopyWith<T, TableBuilderState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableBuilderStateCopyWith<T extends Object, $Res> {
  factory $TableBuilderStateCopyWith(TableBuilderState<T> value,
          $Res Function(TableBuilderState<T>) then) =
      _$TableBuilderStateCopyWithImpl<T, $Res, TableBuilderState<T>>;
  @useResult
  $Res call(
      {List<T> items,
      List<T> filteredItems,
      Option<TbColumn<T, dynamic>> sortedColumnOption,
      Option<T> hoveredItemOption,
      List<TbColumn<T, dynamic>> tbColumns,
      int freezedColumnsCount,
      bool ascending,
      int filtersChanged});
}

/// @nodoc
class _$TableBuilderStateCopyWithImpl<T extends Object, $Res,
        $Val extends TableBuilderState<T>>
    implements $TableBuilderStateCopyWith<T, $Res> {
  _$TableBuilderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? filteredItems = null,
    Object? sortedColumnOption = null,
    Object? hoveredItemOption = null,
    Object? tbColumns = null,
    Object? freezedColumnsCount = null,
    Object? ascending = null,
    Object? filtersChanged = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      filteredItems: null == filteredItems
          ? _value.filteredItems
          : filteredItems // ignore: cast_nullable_to_non_nullable
              as List<T>,
      sortedColumnOption: null == sortedColumnOption
          ? _value.sortedColumnOption
          : sortedColumnOption // ignore: cast_nullable_to_non_nullable
              as Option<TbColumn<T, dynamic>>,
      hoveredItemOption: null == hoveredItemOption
          ? _value.hoveredItemOption
          : hoveredItemOption // ignore: cast_nullable_to_non_nullable
              as Option<T>,
      tbColumns: null == tbColumns
          ? _value.tbColumns
          : tbColumns // ignore: cast_nullable_to_non_nullable
              as List<TbColumn<T, dynamic>>,
      freezedColumnsCount: null == freezedColumnsCount
          ? _value.freezedColumnsCount
          : freezedColumnsCount // ignore: cast_nullable_to_non_nullable
              as int,
      ascending: null == ascending
          ? _value.ascending
          : ascending // ignore: cast_nullable_to_non_nullable
              as bool,
      filtersChanged: null == filtersChanged
          ? _value.filtersChanged
          : filtersChanged // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TableBuilderStateImplCopyWith<T extends Object, $Res>
    implements $TableBuilderStateCopyWith<T, $Res> {
  factory _$$TableBuilderStateImplCopyWith(_$TableBuilderStateImpl<T> value,
          $Res Function(_$TableBuilderStateImpl<T>) then) =
      __$$TableBuilderStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {List<T> items,
      List<T> filteredItems,
      Option<TbColumn<T, dynamic>> sortedColumnOption,
      Option<T> hoveredItemOption,
      List<TbColumn<T, dynamic>> tbColumns,
      int freezedColumnsCount,
      bool ascending,
      int filtersChanged});
}

/// @nodoc
class __$$TableBuilderStateImplCopyWithImpl<T extends Object, $Res>
    extends _$TableBuilderStateCopyWithImpl<T, $Res, _$TableBuilderStateImpl<T>>
    implements _$$TableBuilderStateImplCopyWith<T, $Res> {
  __$$TableBuilderStateImplCopyWithImpl(_$TableBuilderStateImpl<T> _value,
      $Res Function(_$TableBuilderStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? filteredItems = null,
    Object? sortedColumnOption = null,
    Object? hoveredItemOption = null,
    Object? tbColumns = null,
    Object? freezedColumnsCount = null,
    Object? ascending = null,
    Object? filtersChanged = null,
  }) {
    return _then(_$TableBuilderStateImpl<T>(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      filteredItems: null == filteredItems
          ? _value._filteredItems
          : filteredItems // ignore: cast_nullable_to_non_nullable
              as List<T>,
      sortedColumnOption: null == sortedColumnOption
          ? _value.sortedColumnOption
          : sortedColumnOption // ignore: cast_nullable_to_non_nullable
              as Option<TbColumn<T, dynamic>>,
      hoveredItemOption: null == hoveredItemOption
          ? _value.hoveredItemOption
          : hoveredItemOption // ignore: cast_nullable_to_non_nullable
              as Option<T>,
      tbColumns: null == tbColumns
          ? _value._tbColumns
          : tbColumns // ignore: cast_nullable_to_non_nullable
              as List<TbColumn<T, dynamic>>,
      freezedColumnsCount: null == freezedColumnsCount
          ? _value.freezedColumnsCount
          : freezedColumnsCount // ignore: cast_nullable_to_non_nullable
              as int,
      ascending: null == ascending
          ? _value.ascending
          : ascending // ignore: cast_nullable_to_non_nullable
              as bool,
      filtersChanged: null == filtersChanged
          ? _value.filtersChanged
          : filtersChanged // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TableBuilderStateImpl<T extends Object> extends _TableBuilderState<T> {
  const _$TableBuilderStateImpl(
      {required final List<T> items,
      required final List<T> filteredItems,
      required this.sortedColumnOption,
      required this.hoveredItemOption,
      required final List<TbColumn<T, dynamic>> tbColumns,
      required this.freezedColumnsCount,
      required this.ascending,
      required this.filtersChanged})
      : _items = items,
        _filteredItems = filteredItems,
        _tbColumns = tbColumns,
        super._();

  final List<T> _items;
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<T> _filteredItems;
  @override
  List<T> get filteredItems {
    if (_filteredItems is EqualUnmodifiableListView) return _filteredItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredItems);
  }

  @override
  final Option<TbColumn<T, dynamic>> sortedColumnOption;
  @override
  final Option<T> hoveredItemOption;
  final List<TbColumn<T, dynamic>> _tbColumns;
  @override
  List<TbColumn<T, dynamic>> get tbColumns {
    if (_tbColumns is EqualUnmodifiableListView) return _tbColumns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tbColumns);
  }

  @override
  final int freezedColumnsCount;
  @override
  final bool ascending;
  @override
  final int filtersChanged;

  @override
  String toString() {
    return 'TableBuilderState<$T>(items: $items, filteredItems: $filteredItems, sortedColumnOption: $sortedColumnOption, hoveredItemOption: $hoveredItemOption, tbColumns: $tbColumns, freezedColumnsCount: $freezedColumnsCount, ascending: $ascending, filtersChanged: $filtersChanged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableBuilderStateImpl<T> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._filteredItems, _filteredItems) &&
            (identical(other.sortedColumnOption, sortedColumnOption) ||
                other.sortedColumnOption == sortedColumnOption) &&
            (identical(other.hoveredItemOption, hoveredItemOption) ||
                other.hoveredItemOption == hoveredItemOption) &&
            const DeepCollectionEquality()
                .equals(other._tbColumns, _tbColumns) &&
            (identical(other.freezedColumnsCount, freezedColumnsCount) ||
                other.freezedColumnsCount == freezedColumnsCount) &&
            (identical(other.ascending, ascending) ||
                other.ascending == ascending) &&
            (identical(other.filtersChanged, filtersChanged) ||
                other.filtersChanged == filtersChanged));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_filteredItems),
      sortedColumnOption,
      hoveredItemOption,
      const DeepCollectionEquality().hash(_tbColumns),
      freezedColumnsCount,
      ascending,
      filtersChanged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableBuilderStateImplCopyWith<T, _$TableBuilderStateImpl<T>>
      get copyWith =>
          __$$TableBuilderStateImplCopyWithImpl<T, _$TableBuilderStateImpl<T>>(
              this, _$identity);
}

abstract class _TableBuilderState<T extends Object>
    extends TableBuilderState<T> {
  const factory _TableBuilderState(
      {required final List<T> items,
      required final List<T> filteredItems,
      required final Option<TbColumn<T, dynamic>> sortedColumnOption,
      required final Option<T> hoveredItemOption,
      required final List<TbColumn<T, dynamic>> tbColumns,
      required final int freezedColumnsCount,
      required final bool ascending,
      required final int filtersChanged}) = _$TableBuilderStateImpl<T>;
  const _TableBuilderState._() : super._();

  @override
  List<T> get items;
  @override
  List<T> get filteredItems;
  @override
  Option<TbColumn<T, dynamic>> get sortedColumnOption;
  @override
  Option<T> get hoveredItemOption;
  @override
  List<TbColumn<T, dynamic>> get tbColumns;
  @override
  int get freezedColumnsCount;
  @override
  bool get ascending;
  @override
  int get filtersChanged;
  @override
  @JsonKey(ignore: true)
  _$$TableBuilderStateImplCopyWith<T, _$TableBuilderStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
