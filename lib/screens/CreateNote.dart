import 'package:biji/components/BijiAppBar.dart';
import 'package:biji/components/InputField.dart';
import 'package:biji/models/Note.dart';
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
            titleInput(),
            contentInput(),
            submitButton(context),
          ],
        ),
      ),
    );
  }

  Padding submitButton(BuildContext context) => Padding(
        padding: const EdgeInsets.fromLTRB(0, 7.0, 0, 7.0),
        child: RaisedButton(
          onPressed: () {
            if (title != null && content != null) {
              final Note note = Note(
                title: title.text,
                content: content.text,
              );
              Navigator.pop(context, note);
            } else {
              Navigator.pop(context);
            }
          },
          child: Text('Submit'),
        ),
      );

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
