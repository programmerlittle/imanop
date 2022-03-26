import 'package:flutter/material.dart';

class About extends StatefulWidget {
  About({Key? key, required this.TextFromPage}) : super(key: key);
//const ถ้ามีคือค่าคงที่  ลบออกคือรับค่า
  String TextFromPage;

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About : ${widget.TextFromPage}')),
      body: Center(
        child: Text('This Text Value : ${widget.TextFromPage}'),
      ),
    );
  }
}
