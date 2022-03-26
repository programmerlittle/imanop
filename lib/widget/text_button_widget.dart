import 'package:flutter/material.dart';
import 'package:imanop/about.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
    required this.controller,
    required this.onPressed,
    required this.buttonLabel,
  }) : super(key: key);

  final TextEditingController controller;
  final Function() onPressed;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 80.0, right: 80.0),
          child: TextField(
            controller: controller,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        ElevatedButton(onPressed: onPressed, child: Text(buttonLabel))
      ],
    );
  }
}
