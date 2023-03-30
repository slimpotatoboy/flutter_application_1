import 'package:flutter/material.dart';

class TodoMain extends StatelessWidget {
  const TodoMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text("Good afternoon Bob Lee"),
                  Text(" It's Tuesday, Mar 28 - 7 tasks"),
                  TextFormField(),
                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 5),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Text("Whaat is this?"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
