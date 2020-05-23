import 'package:biji/screens/Options.dart';
import 'package:flutter/material.dart';

class BijiAppBar extends StatelessWidget with PreferredSizeWidget {
  final BuildContext context;
  final String title;

  BijiAppBar({
    this.context,
    this.title,
  });

  @override
  Widget build(BuildContext _context) {
    return AppBar(
      title: Text(
        title ?? 'Biji',
        style: TextStyle(fontSize: 25.0),
        textAlign: TextAlign.center,
      ),
      actions: (context != null)
          ? <Widget>[
              displayOptionsButton(),
            ]
          : null,
    );
  }

  IconButton displayOptionsButton() => IconButton(
        icon: Icon(Icons.more_vert),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Options();
          }));
        },
      );

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
