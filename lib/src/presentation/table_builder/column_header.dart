import 'package:svg_flutter/svg.dart';
import 'package:table_builder/src/application/table_builder_bloc/table_builder_bloc.dart';
import 'package:table_builder/src/domain/tb_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'table_builder.dart';

class TbColumnHeader<T extends Object> extends StatefulWidget {
  const TbColumnHeader(this.column, {super.key});
  final TbColumn<T, dynamic> column;

  @override
  State<TbColumnHeader<T>> createState() => _TbColumnHeaderState<T>();
}

class _TbColumnHeaderState<T extends Object> extends State<TbColumnHeader<T>> {
  bool showingFilterMenu = false;
  OverlayEntry? _overlayEntry;

  _dismissOverlayEntry() {
    showingFilterMenu = false;
    _overlayEntry?.remove();
  }

  OverlayEntry _createOverlayEntry(final TableBuilderBloc<T> bloc) {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;
    var offset = renderBox.localToGlobal(Offset.zero);

    const menuWidth = 250.0;

    return OverlayEntry(
      builder: (context) => Positioned(
        left: offset.dx + menuWidth < MediaQuery.of(context).size.width
            ? offset.dx
            : null,
        right: offset.dx + menuWidth > MediaQuery.of(context).size.width
            ? 5
            : null,
        top: offset.dy + size.height,
        width: menuWidth,
        child: TapRegion(
          onTapOutside: (_) => _dismissOverlayEntry(),
          child: filterMenu(bloc, _dismissOverlayEntry),
        ),
      ),
    );
  }

  Widget filterMenu(TableBuilderBloc<T> bloc, void Function() dismiss) {
    return BlocProvider<TableBuilderBloc<T>>.value(
      value: bloc,
      child: Material(
        borderRadius: BorderRadius.circular(12),
        elevation: 4.0,
        child: widget.column is TbColumn<T, String>
            ? StringFilterMenu<T>(
                column: widget.column as TbColumn<T, String>,
                dismiss: dismiss,
              )
            : widget.column is TbColumn<T, int>
                ? NumberFilterMenu(
                    column: widget.column as TbColumn<T, int>,
                    dismiss: dismiss,
                  )
                : DateFilterMenu(
                    column: widget.column as TbColumn<T, DateTime>,
                    dismiss: dismiss,
                  ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TableBuilderBloc<T>, TableBuilderState<T>>(
      builder: (context, state) {
        return InkWell(
          borderRadius: BorderRadius.zero,
          onTap: () {
            if (context.useMobileLayout) {
              showModalBottomSheet(
                context: context,
                builder: (_) => filterMenu(
                  context.read<TableBuilderBloc<T>>(),
                  context.pop,
                ),
              );
            } else {
              if (!showingFilterMenu) {
                _overlayEntry =
                    _createOverlayEntry(context.read<TableBuilderBloc<T>>());
                Overlay.of(context).insert(_overlayEntry!);
                setState(() {
                  showingFilterMenu = true;
                });
              } else {
                _overlayEntry?.remove();
                setState(() {
                  showingFilterMenu = false;
                });
              }
            }
          },
          child: Container(
            height: 60,
            padding: widget.column.padding,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 0.5,
                  color: Colors.grey.shade400,
                ),
              ),
            ),
            child: Row(
              children: [
                Text(
                  widget.column.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 8),
                state.sortedColumnOption.fold(() => const SizedBox(), (a) {
                  return a != widget.column
                      ? const SizedBox()
                      : state.ascending
                          ? SvgPicture.asset(
                              'assets/up_arrow.svg',
                              height: 14,
                            )
                          : SvgPicture.asset(
                              'assets/down_arrow.svg',
                              height: 14,
                            );
                }),
                const SizedBox(width: 4),
                widget.column.filter.appliedCriteria.isNotEmpty
                    ? SvgPicture.asset(
                        'assets/filter_on.svg',
                        height: 18,
                      )
                    : SvgPicture.asset(
                        'assets/filter.svg',
                        height: 16,
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
