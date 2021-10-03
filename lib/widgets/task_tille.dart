// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({required this.tileTile, required this.isChecked, required this.callBack});

  final bool isChecked;
  final String tileTile;
  final Function callBack;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tileTile.toString(),
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),

      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: callBack as void Function(bool?)?,
    )
    );
  }
}



//
