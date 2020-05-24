import 'package:biji/components/BijiAppBar.dart';
import 'package:biji/components/InputField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateNote extends StatelessWidget {
  final TextEditingController title = TextEditingController();
  final TextEditingController content = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BijiAppBar(
        title: 'New Note',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            displayTitle(),
            displayContent(),
          ],
        ),
      ),
    );
  }

  InputField displayTitle() => InputField(
        controller: title,
        label: 'Title',
        hint: 'Title',
        inputType: TextInputType.text,
      );

  InputField displayContent() => InputField(
        controller: content,
        label: 'Content',
        hint: 'Content',
        inputType: TextInputType.multiline,
        maxLines: null,
        border: false,
      );
}
