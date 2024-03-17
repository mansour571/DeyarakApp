import 'package:flutter/material.dart';

class BuildingAge extends StatelessWidget {
  const BuildingAge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color.fromARGB(131, 0, 0, 0)),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: TextField(
            keyboardType: TextInputType.number,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Building Age ',
              labelStyle: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
