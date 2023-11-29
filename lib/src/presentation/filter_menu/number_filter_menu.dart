part of '../table_builder/table_builder.dart';

class NumberFilterMenu<T extends Object> extends StatefulWidget {
  final TbColumn<T, int> column;
  final Function() dismiss;
  const NumberFilterMenu({
    super.key,
    required this.column,
    required this.dismiss,
  });

  @override
  State<NumberFilterMenu<T>> createState() => _NumberFilterMenuState<T>();
}

class _NumberFilterMenuState<T extends Object>
    extends State<NumberFilterMenu<T>> {
  int? min, max;
  final minTextController = TextEditingController();
  final maxTextController = TextEditingController();

  @override
  void initState() {
    if (widget.column.filter.appliedCriteria.any(
      (element) => element.name == NumberCriteria.greaterThanOrEqual,
    )) {
      min = widget.column.filter.appliedCriteria
          .firstWhere(
            (element) => element.name == NumberCriteria.greaterThanOrEqual,
          )
          .target;
    }
    if (widget.column.filter.appliedCriteria
        .any((element) => element.name == NumberCriteria.lessThanOrEqual)) {
      max = widget.column.filter.appliedCriteria
          .firstWhere(
            (element) => element.name == NumberCriteria.lessThanOrEqual,
          )
          .target;
    }
    minTextController.text = min?.toString() ?? '';
    maxTextController.text = max?.toString() ?? '';
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
                          '${labels.minimum}:',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    TextFormField(
                      controller: minTextController,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      onChanged: (_) => setState(
                        () => min = int.tryParse(minTextController.text),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '${labels.maximum}:',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    TextFormField(
                      controller: maxTextController,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      onChanged: (_) => setState(
                        () => max = int.tryParse(maxTextController.text),
                      ),
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
                    PrimaryButton(
                      onPressed: min == null && max == null
                          ? null
                          : () {
                              widget.column.filter.appliedCriteria.clear();
                              if (min != null) {
                                widget.column.filter.appliedCriteria.add(
                                  AppliedCriterion(
                                    name: NumberCriteria.greaterThanOrEqual,
                                    target: min!,
                                  ),
                                );
                              }
                              if (max != null) {
                                widget.column.filter.appliedCriteria.add(
                                  AppliedCriterion(
                                    name: NumberCriteria.lessThanOrEqual,
                                    target: max!,
                                  ),
                                );
                              }
                              context.read<TableBuilderBloc<T>>().add(
                                    TableBuilderEvent<T>.onSetFilterPressed(
                                      widget.column,
                                    ),
                                  );
                              widget.dismiss();
                            },
                      text: labels.save,
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
