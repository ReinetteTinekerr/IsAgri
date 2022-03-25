import 'package:freezed_annotation/freezed_annotation.dart';

part 'farming_task.g.dart';

@JsonSerializable()
class FarmingTask {
  String title;
  String details;
  String date;
  bool isDone;

  FarmingTask({
    this.isDone = false,
    required this.title,
    required this.details,
    required this.date,
  });

  // from json
  factory FarmingTask.fromJson(Map<String, dynamic> json) =>
      _$FarmingTaskFromJson(json);

// to json
  Map<String, dynamic> toJson() => _$FarmingTaskToJson(this);
}
