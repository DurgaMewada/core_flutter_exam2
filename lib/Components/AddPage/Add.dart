import 'dart:io';
import 'package:core_flutter_exam2/Utils/Color.dart';
import 'package:core_flutter_exam2/Utils/Global.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkcolor,
        centerTitle: true,
        title: Text(
          'Student Add',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: lightcolor,
                  backgroundImage:
                  (fileImage != null) ? FileImage(fileImage!) : null,
                ),
              ),
              Center(
                  child: TextButton(
                      onPressed: () async {
                        XFile? xfileImage = await imagePicker.pickImage(
                            source: ImageSource.gallery);
                        setState(() {
                          fileImage = File(xfileImage!.path);
                        });
                      },
                      child: Text(
                        'Add Photo',
                        style: TextStyle(color: darkcolor, fontSize: 18),
                      ))),
              SizedBox(
                height: 10,
              ),
              Text(
                'Student Name ',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: txtname,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text(
                      'Name',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: darkcolor),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Student GRID ',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: txtgrid,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text(
                      'Grid',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: darkcolor),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Student Standard ',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: txtstd,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text(
                      'Standard',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: darkcolor),
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    studentList.add(
                        Student(txtname.text,
                             txtgrid.text,
                             txtstd.text,
                             fileImage)
                    );
                    Navigator.of(context).pushNamed('/home');
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(color: darkcolor, fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
