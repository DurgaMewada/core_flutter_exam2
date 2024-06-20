import 'package:core_flutter_exam2/Utils/Global.dart';
import 'package:flutter/material.dart';

import '../../Utils/Color.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkcolor,
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/');
              txtstd.clear();
              txtname.clear();
              txtgrid.clear();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          'Student List',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                ...List.generate(
                  studentList.length,
                      (index) => GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed('/detail');
                          index=selectedIndex;
                        },
                        child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                        height: 100,
                        width: 400,
                        decoration: BoxDecoration(
                            color: darkcolor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 45,
                              backgroundImage: FileImage(studentList[index].img),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Name : ${studentList[index].name}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'GRID: ${studentList[index].grid}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'STD: ${studentList[index].std}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        showDialog(context: context, builder:(context) => AlertDialog(
                                          title: Text('Update'),
                                          content: SingleChildScrollView(
                                            child: Container(
                                              height: 350,
                                              child: Column(
                                                children: [Text(
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
                                                    controller: txtname1,
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
                                                    controller: txtgrid1,
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
                                                    controller: txtstd1,
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
                                                SizedBox(height: 5,),
                                                TextButton(onPressed: (){
                                                  setState(() {
                                                    studentList[index].name=txtname1.text;
                                                    studentList[index].grid=txtgrid1.text;
                                                    studentList[index].std=txtstd1.text;
                                                    Navigator.of(context).pop();
                                                  });
                        
                                                }, child: Text(
                                                  'Update',style: TextStyle(
                                                  color: darkcolor,
                                                ),
                                                ))],
                                              ),
                                            ),
                                          ),
                                        ) ,);
                        
                                      });
                                    },
                                    icon: Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                    )),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        studentList.removeAt(index);
                                      });
                                    },
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                          ],
                        ),
                                            ),
                                          ),
                      ),
                ),

              ]),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/');
                txtstd.clear();
                txtname.clear();
                txtgrid.clear();
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 550),
                child: Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                    color: darkcolor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Add ',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
