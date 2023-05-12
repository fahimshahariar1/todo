import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts/colors.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: Icon(
          Icons.check_box,
          color: tdBlue,
        ),
        title: Text(
          "Check Mail",
          style: TextStyle(
              fontSize: 18,
              color: tdBlack,
              decoration: TextDecoration.lineThrough),
        ),
      ),
    );
  }
}
