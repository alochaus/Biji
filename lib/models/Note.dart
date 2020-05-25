import 'package:flutter/material.dart';

class Note {
  final String title;
  final String content;
  final Color color;

  Note({
    @required this.title,
    @required this.content,
    this.color,
  });

  bool   isValid()    => title != '' && content != '';
  String toString()   => 'Title: $title\nContent: $content\n';
  String getTitle()   => title;
  String getContent() => content;
}