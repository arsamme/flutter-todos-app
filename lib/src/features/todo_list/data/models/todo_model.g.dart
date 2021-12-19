// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoModel _$TodoModelFromJson(Map<String, dynamic> json) => TodoModel(
      time: json['time'] as String,
      title: json['title'] as String,
      color: json['color'] as String,
      done: json['done'] as bool,
    );

Map<String, dynamic> _$TodoModelToJson(TodoModel instance) => <String, dynamic>{
      'time': instance.time,
      'title': instance.title,
      'color': instance.color,
      'done': instance.done,
    };
