import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
TextEditingController txtname= TextEditingController();
TextEditingController txtgrid= TextEditingController();
TextEditingController txtstd= TextEditingController();


TextEditingController txtname1= TextEditingController();
TextEditingController txtgrid1= TextEditingController();
TextEditingController txtstd1= TextEditingController();

int selectedIndex=0;
ImagePicker imagePicker = ImagePicker();
File? fileImage;

List studentList =[];

class Student {
   String? name;
   String? grid;
   String? std;
   File? img;

   Student(this.name,this.grid,this.std,this.img);
}