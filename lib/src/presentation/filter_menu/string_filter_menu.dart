part of '../table_builder/table_builder.dart';

class StringFilterMenu<T extends Object> extends StatefulWidget {
  final TbColumn<T, String> column;
  final Function() dismiss;
  const StringFilterMenu({
    super.key,
    required this.column,
    required this.dismiss,
  });

  @override
  State<StringFilterMenu<T>> createState() => _StringFilterMenuState<T>();
}

class _StringFilterMenuState<T extends Object>
    extends State<StringFilterMenu<T>> {
  TextEditingController controller = TextEditingController();
  String search = '';

  @override
  void initState() {
    final appliedFilters = (widget.column.filter).appliedCriteria;
    search = appliedFilters.isEmpty ? '' : appliedFilters.first.target;
    controller.text = search;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final labels = context.localizationLabels;

    return BlocBuilder<TableBuilderBloc<T>, TableBuilderState<T>>(
      builder: (context, state) {
        return Theme(
          data: Theme.of(context).copyWith(
            inputDecorationTheme: InputDecorationTheme(
              isDense: true,
              contentPadding: const EdgeInsets.all(10),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade800),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade500),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade500),
              ),
            ),
          ),
          child: Column(
            children: [
              ListTile(
                leading: SvgPicture.asset(
                  'assets/ascending.svg',
                  height: 16,
                ),
                title: Text(labels.sortAscending),
                onTap: () {
                  context.read<TableBuilderBloc<T>>().add(
                        TableBuilderEvent<T>.onSortPressed(
                          sortedColumn: widget.column,
                          ascending: true,
                        ),
                      );
                  widget.dismiss();
                },
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/descending.svg',
                  height: 16,
                ),
                title: Text(labels.sortDescending),
                onTap: () {
                  context.read<TableBuilderBloc<T>>().add(
                        TableBuilderEvent<T>.onSortPressed(
                          sortedColumn: widget.column,
                          ascending: false,
                        ),
                      );
                  widget.dismiss();
                },
              ),
              const Divider(),
              ListTile(
                leading: widget.column.filter.appliedCriteria.isNotEmpty
                    ? SvgPicture.asset(
                        'assets/filter_clear_black.svg',
                        height: 16,
                      )
                    : SvgPicture.asset(
                        'assets/filter_clear_grey.svg',
                        height: 16,
                      ),
                title: Text(labels.clearFilter),
                enabled: widget.column.filter.appliedCriteria.isNotEmpty,
                onTap: () {
                  context.read<TableBuilderBloc<T>>().add(
                        TableBuilderEvent<T>.onClearFilterPressed(
                          widget.column,
                        ),
                      );
                  widget.dismiss();
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '${labels.search}:',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    TextFormField(
                      controller: controller,
                      onChanged: (_) => setState(() {
                        search = controller.text;
                      }),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, right: 4, bottom: 12),
                child: ButtonBar(
                  children: [
                    TextButton(
                      onPressed: widget.dismiss,
                      child: Text(labels.close),
                    ),
                    TextButton(
                      onPressed: search.isEmpty
                          ? null
                          : () {
                              widget.column.filter.appliedCriteria.clear();
                              widget.column.filter.appliedCriteria.add(
                                AppliedCriterion(
                                  name: StringCriteria.contains,
                                  target: search,
                                ),
                              );

                              context.read<TableBuilderBloc<T>>().add(
                                    TableBuilderEvent<T>.onSetFilterPressed(
                                      widget.column,
                                    ),
                                  );
                              widget.dismiss();
                            },
                      child: Text(labels.save),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
