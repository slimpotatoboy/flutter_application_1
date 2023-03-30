import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _formData = TextEditingController();
  String textValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Text(
                  "Good Afternoon, Dipen",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    "It's Tuesday, 28th Mar 2023",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    controller: _formData,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter a item",
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    textValue = _formData.text;
                    print(_formData.text);
                    setState(() {});
                  },
                  child: Text("Add"),
                ),
                if (textValue != "")
                  Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 6.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(textValue),
                        Icon(Icons.home),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
