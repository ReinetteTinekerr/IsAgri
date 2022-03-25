import 'dart:collection';
import 'dart:convert';

import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:mvvm_skeleton/src/app/di.dart';
import 'package:mvvm_skeleton/src/data/data_source/local_data_source.dart';
import 'package:mvvm_skeleton/src/domain/models/farming_task.dart';
import 'package:mvvm_skeleton/src/presentation/resources/color_manager.dart';
import 'package:mvvm_skeleton/src/presentation/resources/strings_manager.dart';
import 'package:mvvm_skeleton/src/presentation/resources/values_manager.dart';

class TaskDialog extends StatefulWidget {
  final DateTime selectedDate;
  final LinkedHashMap<DateTime, List<FarmingTask>> events;
  String? header;
  String? title;
  String? details;
  TaskDialog(
      {Key? key,
      required this.selectedDate,
      required this.events,
      this.header,
      this.title,
      this.details})
      : super(key: key);

  @override
  State<TaskDialog> createState() => _TaskDialogState();
}

class _TaskDialogState extends State<TaskDialog> {
  late DateTime _selectedDate;
  late LinkedHashMap<DateTime, List<FarmingTask>> _events;
  final _formKey = GlobalKey<FormBuilderState>();
  final _localDataSource = instance<LocalDataSourceImpl>();
  final TextEditingController _titleController =
      TextEditingController(text: null);
  final TextEditingController _detailsController =
      TextEditingController(text: '');
  final TextEditingController _dateController =
      TextEditingController(text: null);

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.selectedDate;
    _events = widget.events;
    _titleController.text = widget.title ?? '';
    _detailsController.text = widget.details ?? '';
  }

  @override
  void dispose() {
    _titleController.dispose();
    _detailsController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.header ?? 'Add Task'),
      content: FormBuilder(
          key: _formKey,
          child: _getItemsInColumn([
            FormBuilderTextField(
              controller: _titleController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field cannot be empty';
                }
                return null;
              },
              name: 'title',
              keyboardType: TextInputType.name,
              decoration:
                  const InputDecoration(label: Text('Title'), hintText: ''),
            ),
            const SizedBox(height: AppMargin.m10),
            FormBuilderTextField(
              controller: _detailsController,
              name: 'details',
              // initialValue: '',
              keyboardType: TextInputType.multiline,
              maxLines: 2,
              decoration: const InputDecoration(
                label: Text('Details'),
                hintText: '',
              ),
            ),
            const SizedBox(height: AppMargin.m10),
            FormBuilderDateTimePicker(
              onChanged: ((value) {
                _selectedDate = value ?? widget.selectedDate;
              }),
              controller: _dateController,
              name: 'date',
              initialValue: widget.selectedDate,
              inputType: InputType.date,
              format: DateFormat('EEE, dd MMMM, yyyy'),
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.calendar_today_sharp)),
            )
          ])),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'cancel',
              style: TextStyle(color: ColorManager.grey),
            )),
        ElevatedButton(
            onPressed: () {
              bool validated = _formKey.currentState!.validate();
              if (validated) {
                _formKey.currentState!.save();
                // _formKey.currentState!.value;
                // final data = json.encode(_formKey.currentState!.value);
                final task = FarmingTask(
                    title: _titleController.text,
                    details: _detailsController.text,
                    date: _dateController.text);
                if (_events.containsKey(_selectedDate)) {
                  _events[_selectedDate]?.add(task);
                } else {
                  _events[_selectedDate] = [task];
                }
                print(_events);
                _localDataSource.addTasks(_events);
                setState(() {});
                Navigator.pop(context);
              }
            },
            child: const Text(AppStrings.save))
      ],
    );
  }

  Widget _getItemsInColumn(List<Widget> children) {
    return SizedBox(
      width: AppPadding.p300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: children,
      ),
    );
  }
}
