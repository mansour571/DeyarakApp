import 'package:flutter/material.dart';

class Add_Photo extends StatefulWidget {
  Add_Photo({super.key});

  @override
  State<Add_Photo> createState() => _Add_PhotoState();
}

class _Add_PhotoState extends State<Add_Photo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10, top: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Add Some Photo',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You wll need photos to get start you \n can add more changes later',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: const EdgeInsets.only(top: 15, left: 15, bottom: 15),
            decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(104, 0, 0, 0)),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 60,
            width: 300,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.add_a_photo),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    'Add Photos',
                    style: TextStyle(fontSize: 23),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
