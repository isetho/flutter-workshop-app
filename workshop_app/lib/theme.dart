import 'package:flutter/material.dart';

/// A custom appbar with common styling.
class CommonAppbar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;

  CommonAppbar(this.title, {Key? key})
      : preferredSize = const Size.fromHeight(50),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
      backgroundColor: const Color(0xFFB2D8DB),
      elevation: 0,
    );
  }
}
