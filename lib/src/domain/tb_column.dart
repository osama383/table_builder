import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'filters.dart';

class TbColumn<T extends Object, Type extends Object> extends Equatable {
  final String id;
  final String title;
  final double minWidth;
  final Widget Function(T item) cellWidget;
  final TbFilter<T, Type> filter;
  final EdgeInsets padding;
  final int flex;

  const TbColumn({
    required this.id,
    required this.title,
    required this.filter,
    required this.cellWidget,
    required this.minWidth,
    required this.padding,
    this.flex = 1,
  });

  @override
  List<Object?> get props => [id];
}
