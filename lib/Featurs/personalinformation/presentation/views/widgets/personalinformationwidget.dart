import 'dart:io';

import 'package:deyarakapp/Featurs/personalinformation/presentation/views/widgets/Button.dart';
import 'package:deyarakapp/Featurs/personalinformation/presentation/views/widgets/appbarwidget.dart';
import 'package:deyarakapp/Featurs/personalinformation/presentation/views/widgets/personalinformationitem.dart';
import 'package:deyarakapp/constants.dart';
import 'package:deyarakapp/core/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class personalinformationwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appbar(
            text: 'Personal Information',
            h: 0.03,
          ),
          Center(child: image()),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.045,
          ),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kusername);
            },
            child: Personalinformationitem(
              base: 'User Name',
              hint: 'Ahmed Mohamed',
              last: 'Edit',
            ),
          ),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kemail);
            },
            child: Personalinformationitem(
              base: 'Email',
              hint: 'AhmedMohamed@gmail.com',
              last: 'Edit',
            ),
          ),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kphonenumber);
            },
            child: Personalinformationitem(
              base: 'Phone Number',
              hint: 'provide Phone Number',
              last: 'Add',
            ),
          ),
        ],
      ),
    );
  }
}

class image extends StatefulWidget {
  @override
  State<image> createState() => _imageState();
}

class _imageState extends State<image> {
  // ignore: unused_field
  static File? selectedimage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Button(
          text: 'upload profile image',
          ontap: () {
            getImage();
          },
          raduis: 15,
          colorr: kprimarycolor,
          width: 2,
          marginn: 2.5,
          height: 18,
        ),
      ],
    );
  }

// Function to open image picker
  Future getImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return;
    setState(() {
      selectedimage = File(pickedFile.path);
    });
  }
}
