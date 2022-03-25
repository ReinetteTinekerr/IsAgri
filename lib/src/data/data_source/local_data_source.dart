import 'dart:convert';

import 'package:mvvm_skeleton/src/domain/models/farming_task.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalDataSource {
  void addTasks(Map<DateTime, List<FarmingTask>> tasks);
  void deleteTask(DateTime selectedDay, int index);
  void updateTask(FarmingTask task);
  Future<Map<DateTime, List<FarmingTask>>> getTasks();
}

class LocalDataSourceImpl implements LocalDataSource {
  final SharedPreferences _sharedPref;

  LocalDataSourceImpl(this._sharedPref);

  @override
  Future<void> deleteTask(DateTime selectedDay, int index) async {
    final tasks = await getTasks();
    final tasksInDay = tasks[selectedDay]!;
    final remaining = tasksInDay.removeAt(index);
    tasks[selectedDay] = tasksInDay;
    addTasks(tasks);
    // print(task[selectedDay]?.length);
    // print(index);
  }

  @override
  void updateTask(FarmingTask task) {
    // TODO: implement updateTask
  }

  @override
  Future<Map<DateTime, List<FarmingTask>>> getTasks() async {
    final jsonDecode = await json.decode(_sharedPref.getString('task') ?? '{}');
    final x = Map<String, List<dynamic>>.from(jsonDecode);
    final decodedTasks = decodeMap(x);
    return decodedTasks;
  }

  @override
  Future<void> addTasks(Map<DateTime, List<FarmingTask>> tasks) async {
    final dateToString = encodeMap(tasks);
    final jsonEncode = json.encode(dateToString);
    final done = await _sharedPref.setString('task', jsonEncode);
    print(done);
  }
}

Map<String, List<FarmingTask>> encodeMap(Map<DateTime, List<FarmingTask>> map) {
  Map<String, List<FarmingTask>> newMap = {};
  map.forEach((key, value) {
    newMap[key.toString()] = map[key] ?? [];
  });
  return newMap;
}

Map<DateTime, List<FarmingTask>> decodeMap(Map<String, List<dynamic>> map) {
  Map<DateTime, List<FarmingTask>> newMap = {};
  map.forEach((key, value) {
    newMap[DateTime.parse(key)] =
        map[key]?.map((e) => FarmingTask.fromJson(e)).toList() ?? [];
  });
  return newMap;
}
