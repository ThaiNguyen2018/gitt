import 'package:flutter/material.dart';

class Exp extends StatelessWidget {
  const Exp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                color: Color.fromARGB(255, 241, 241, 241),
                width: 300,
                padding: EdgeInsets.only(left: 20, right: 20),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.search,
                      size: 18,
                    ),
                    border: InputBorder.none,
                    hintText: 'Search',
                  ),
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.tune))
            ],
          )
        ],
      ),
    );
  }
}
