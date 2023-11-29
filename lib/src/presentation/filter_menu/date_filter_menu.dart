part of '../table_builder/table_builder.dart';

class DateFilterMenu<T extends Object> extends StatefulWidget {
  final TbColumn<T, DateTime> column;
  final void Function() dismiss;
  const DateFilterMenu({
    super.key,
    required this.column,
    required this.dismiss,
  });

  @override
  State<DateFilterMenu<T>> createState() => _DateFilterMenuState<T>();
}

class _DateFilterMenuState<T extends Object> extends State<DateFilterMenu<T>> {
  DateTime? startDate, endDate;

  bool selectingStartDate = false;
  bool selectingEndDate = false;

  final startDateTextController = TextEditingController();
  final endDateTextController = TextEditingController();

  @override
  void initState() {
    if (widget.column.filter.appliedCriteria
        .any((element) => element.name == DateCriteria.isAfter)) {
      startDate = widget.column.filter.appliedCriteria
          .firstWhere((element) => element.name == DateCriteria.isAfter)
          .target;
      startDateTextController.text = startDate == null
          ? ''
          : DateFormat(DateFormat.ABBR_MONTH_DAY).format(startDate!.toLocal());
    }
    if (widget.column.filter.appliedCriteria
        .any((element) => element.name == DateCriteria.isBefore)) {
      endDate = widget.column.filter.appliedCriteria
          .firstWhere(
            (element) => element.name == DateCriteria.isBefore,
          )
          .target;
      endDateTextController.text = endDate == null
          ? ''
          : DateFormat(DateFormat.ABBR_MONTH_DAY).format(endDate!.toLocal());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
          child: selectingStartDate
              ? SfDateRangePicker(
                  initialSelectedDate: startDate,
                  showNavigationArrow: true,
                  onSelectionChanged: (args) {
                    setState(() {
                      startDate = args.value as DateTime;
                      selectingStartDate = false;
                      startDateTextController.text = startDate == null
                          ? ''
                          : DateFormat(DateFormat.ABBR_MONTH_DAY)
                              .format(startDate!.toLocal());
                    });
                  },
                )
              : selectingEndDate
                  ? SfDateRangePicker(
                      initialSelectedDate: endDate,
                      showNavigationArrow: true,
                      onSelectionChanged: (args) {
                        setState(() {
                          endDate = args.value as DateTime;
                          selectingEndDate = false;
                          endDateTextController.text = endDate == null
                              ? ''
                              : DateFormat(DateFormat.ABBR_MONTH_DAY)
                                  .format(endDate!.toLocal());
                        });
                      },
                    )
                  : Column(
                      children: [
                        ListTile(
                          leading: SvgPicture.asset(
                            'assets/ascending.svg',
                            height: 16,
                          ),
                          title: Text(labels.sortAscending),
                          onTap: () {
                            context.read<TableBuilderBloc<T>>().add(
                                  TableBuilderEvent.onSortPressed(
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
                                  TableBuilderEvent.onSortPressed(
                                    sortedColumn: widget.column,
                                    ascending: false,
                                  ),
                                );
                            widget.dismiss();
                          },
                        ),
                        const Divider(),
                        ListTile(
                          leading:
                              widget.column.filter.appliedCriteria.isNotEmpty
                                  ? SvgPicture.asset(
                                      'assets/filter_clear_black.svg',
                                      height: 16,
                                    )
                                  : SvgPicture.asset(
                                      'assets/filter_clear_grey.svg',
                                      height: 16,
                                    ),
                          title: Text(labels.clearFilter),
                          enabled:
                              widget.column.filter.appliedCriteria.isNotEmpty,
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
                                    '${labels.after}:',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              TextField(
                                controller: startDateTextController,
                                showCursor: false,
                                readOnly: true,
                                keyboardType: TextInputType.none,
                                onTap: () async {
                                  setState(() => selectingStartDate = true);
                                },
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    '${labels.before}:',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              TextField(
                                controller: endDateTextController,
                                showCursor: false,
                                readOnly: true,
                                keyboardType: TextInputType.none,
                                onTap: () async {
                                  setState(() => selectingEndDate = true);
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 12,
                            right: 4,
                            bottom: 12,
                          ),
                          child: ButtonBar(
                            children: [
                              TextButton(
                                onPressed: widget.dismiss,
                                child: Text(labels.close),
                              ),
                              PrimaryButton(
                                text: labels.save,
                                onPressed: startDate == null && endDate == null
                                    ? null
                                    : () {
                                        widget.column.filter.appliedCriteria
                                            .clear();
                                        if (startDate != null) {
                                          widget.column.filter.appliedCriteria
                                              .add(
                                            AppliedCriterion(
                                              name: DateCriteria.isAfter,
                                              target: startDate!,
                                            ),
                                          );
                                        }
                                        if (endDate != null) {
                                          widget.column.filter.appliedCriteria
                                              .add(
                                            AppliedCriterion(
                                              name: DateCriteria.isBefore,
                                              target: endDate!,
                                            ),
                                          );
                                        }
                                        context.read<TableBuilderBloc<T>>().add(
                                              TableBuilderEvent<
                                                  T>.onSetFilterPressed(
                                                widget.column,
                                              ),
                                            );
                                        widget.dismiss();
                                      },
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
