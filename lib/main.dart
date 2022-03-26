import 'package:flutter/material.dart';
import 'package:imanop/about.dart';
import 'package:imanop/widget/text_button_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('i\'\Manop'),
      ),
      body: Column(
        children: [
          TextButtonWidget(
              controller: textInput,
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => About(TextFromPage: textInput.text)),
                  ),
                );
                textInput.clear();
              },
              buttonLabel: 'About'),
          TextButtonWidget(
              controller: textInput,
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => About(TextFromPage: textInput.text)),
                  ),
                );
                textInput.clear();
              },
              buttonLabel: 'About2'),
          TextButtonWidget(
              controller: textInput,
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => About(TextFromPage: textInput.text)),
                  ),
                );
                textInput.clear();
              },
              buttonLabel: 'About2')
        ],
      ),
    );
  }
}
