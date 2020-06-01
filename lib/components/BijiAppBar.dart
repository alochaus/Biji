import 'package:flutter/material.dart';

class BijiAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Widget button;
  final bool displayButton;

  BijiAppBar({
    this.title,
    this.button,
    this.displayButton = false,
  });

  @override
  Widget build(BuildContext _context) {
    return AppBar(
      title: Text(
        title ?? 'Biji',
        style: TextStyle(fontSize: 25.0),
        textAlign: TextAlign.center,
      ),
      centerTitle: true,
      actions: displayButton ? <Widget>[button] : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
