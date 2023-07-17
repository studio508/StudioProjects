import 'package:flutter/material.dart';

main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Study to Container'),
        ),
        body: const CustomContainer(),
      ),
    ),
  );
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 116, 171, 83),
          border: Border.all(
            color: Colors.red,
            width: 5,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: const Offset(8, 8),
                blurRadius: 10,
                spreadRadius: 10),
            BoxShadow(
                color: Colors.blue.withOpacity(0.3),
                offset: const Offset(-8, -8),
                blurRadius: 10,
                spreadRadius: 10),
          ],
        ),
        // margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 30),
        child: Center(
          child: Container(
            color: Colors.yellow,
            child: const Text(
              'Hello Container Hello',
            ),
          ),
        ),
      ),
    );
  }
}
