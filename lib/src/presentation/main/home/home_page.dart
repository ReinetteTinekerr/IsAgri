import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:mvvm_skeleton/src/app/di.dart';
import 'package:mvvm_skeleton/src/data/data_source/local_data_source.dart';
import 'package:mvvm_skeleton/src/domain/models/farming_task.dart';
import 'package:mvvm_skeleton/src/presentation/common/state_renderer/flow_state.dart';
import 'package:mvvm_skeleton/src/presentation/main/home/home_viewmodel.dart';
import 'package:mvvm_skeleton/src/presentation/resources/color_manager.dart';
import 'package:mvvm_skeleton/src/presentation/resources/event_manager.dart';
import 'package:mvvm_skeleton/src/presentation/resources/values_manager.dart';
import 'package:mvvm_skeleton/src/presentation/widgets/task_dialog.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeViewModel _viewModel = HomeViewModel();
  final _localDataSource = instance<LocalDataSourceImpl>();
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.month;

  late final ValueNotifier<List<FarmingTask>> _selectedEvents;

  final _events = LinkedHashMap<DateTime, List<FarmingTask>>(
    equals: isSameDay,
    hashCode: getHashCode,
  );

  @override
  void initState() {
    super.initState();
    _bind();
  }

  Future<void> _bind() async {
    _viewModel.start();
    final _tasks = await _localDataSource.getTasks();
    _events.addAll(_tasks);

    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay));
  }

  @override
  void dispose() {
    _selectedEvents.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          _showAddTaskDialog(null, null, null);
        },
      ),
      body: StreamBuilder<FlowState>(
        stream: _viewModel.outputState,
        builder: (context, snapshot) {
          return snapshot.data?.getScreenWidget(
                  context,
                  Column(
                    children: [
                      _getTableCalendar(),
                      Expanded(
                        child: ValueListenableBuilder<List<FarmingTask>>(
                          valueListenable: _selectedEvents,
                          builder: (context, value, _) {
                            return ListView.builder(
                              itemCount: value.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 12.0,
                                    vertical: 4.0,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: ListTile(
                                    tileColor: ColorManager.yellow,
                                    onTap: () async {
                                      _showAddTaskDialog(
                                        value[index].title,
                                        'Edit Task',
                                        value[index].details,
                                      );
                                      // setState(() async {
                                      //   _localDataSource.deleteTask(
                                      //       _selectedDay, index);
                                      //   final _tasks =
                                      //       await _localDataSource.getTasks();
                                      //   _events.addAll(_tasks);
                                      // });
                                    },
                                    title: Text(value[index].title),
                                    subtitle: Text(value[index].details),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      )
                    ],
                  ), () {
                _viewModel.start();
              }) ??
              const Text('NO Data');
        },
      ),
    );
  }

  Card _getTableCalendar() {
    return Card(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.all(8.0),
      child: TableCalendar(
        eventLoader: (day) {
          return _getEventsForDay(day);
        },
        calendarFormat: _calendarFormat,
        onFormatChanged: (format) {
          setState(() {
            _calendarFormat = format;
          });
        },
        headerStyle: HeaderStyle(
          decoration: BoxDecoration(color: ColorManager.primary),
          headerMargin: const EdgeInsets.only(bottom: 8),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: AppSize.s16,
          ),
          formatButtonTextStyle: const TextStyle(color: Colors.white),
          formatButtonDecoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12.0),
          ),
          leftChevronIcon: const Icon(
            Icons.chevron_left,
            color: Colors.white,
          ),
          rightChevronIcon: const Icon(
            Icons.chevron_right,
            color: Colors.white,
          ),
        ),
        calendarStyle: const CalendarStyle(
          weekendTextStyle: TextStyle(color: Colors.red),
          // todayDecoration:
          //     BoxDecoration(shape: BoxShape.rectangle, color: Colors.blue),
          // selectedDecoration: BoxDecoration(shape: BoxShape.rectangle),
        ),
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: _focusedDay,
        daysOfWeekVisible: true,
        selectedDayPredicate: (day) {
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });

          _selectedEvents.value = _getEventsForDay(selectedDay);
        },
      ),
    );
  }

  Future<void> _showAddTaskDialog(
      String? title, String? header, String? details) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return TaskDialog(
          selectedDate: _selectedDay,
          events: _events,
          header: header,
          title: title,
          details: details,
        );
      },
    );
  }

  List<FarmingTask> _getEventsForDay(DateTime day) {
    return _events[day] ?? [];
  }
}
