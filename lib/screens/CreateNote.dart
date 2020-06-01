import 'package:biji/components/BijiAppBar.dart';
import 'package:biji/components/InputField.dart';
import 'package:biji/components/SubmitButton.dart';
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
        displayButton: true,
        button: SubmitButton(title: title, content: content),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            titleInput(),
            contentInput(),
          ],
        ),
      ),
    );
  }

  InputField titleInput() => InputField(
        controller: title,
        label: 'Title',
        hint: 'Title',
        inputType: TextInputType.text,
      );

  InputField contentInput() => InputField(
        controller: content,
        label: 'Content',
        hint: 'Content',
        inputType: TextInputType.multiline,
        maxLines: null,
        border: false,
      );
}
