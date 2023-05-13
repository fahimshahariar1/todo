import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts/colors.dart';
import '../models/todo.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({Key? key, required this.todo, this.ontodoChnage, this.ondeleteItem}) : super(key: key);

  final ToDo todo;
  final ontodoChnage;
  final ondeleteItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ListTile(
        onTap: () {
          ontodoChnage (todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
              fontSize: 18,
              color: tdBlack,
              decoration: todo.isDone? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
              onPressed: () {
                ondeleteItem(todo.id);
              },
              icon: Icon(
                size: 19,
                Icons.delete,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
