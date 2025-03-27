import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  const Answers(this.text, this.selectHandler, {super.key});
  final String text;
  final void Function() selectHandler;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          shadowColor: Colors.black87,
        ),
        onPressed: selectHandler,
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 16)),
      ),
    );
  }
}
