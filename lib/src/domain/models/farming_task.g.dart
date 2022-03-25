// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farming_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FarmingTask _$FarmingTaskFromJson(Map<String, dynamic> json) => FarmingTask(
      isDone: json['isDone'] as bool? ?? false,
      title: json['title'] as String,
      details: json['details'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$FarmingTaskToJson(FarmingTask instance) =>
    <String, dynamic>{
      'title': instance.title,
      'details': instance.details,
      'date': instance.date,
      'isDone': instance.isDone,
    };
