import 'package:flutter/material.dart';

import '../../Utils/Color.dart';
import '../../Utils/Global.dart';
class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkcolor,
        centerTitle: true,
        title: Text(
          'Detail Page',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100,bottom: 100,left: 20,right: 20),
        child: Container(
          height: 450,
          width: 450,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: darkcolor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Stundent Detail',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),),
               Divider(),
               SizedBox(height: 8,),
               CircleAvatar(
                 radius: 80,
                 backgroundImage:FileImage(studentList[selectedIndex!].img),
               ),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Name : ',style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 5,),
                    Text(' ${studentList[selectedIndex].name}',style: TextStyle(
                        color: Colors.white,
                        fontSize:18,
                        fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('GRID : ',style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 5,),
                    Text(' ${studentList[selectedIndex].grid}',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),
              SizedBox(height: 3,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Standard : ',style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 5,),
                    Text(' ${studentList[selectedIndex].std}',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
