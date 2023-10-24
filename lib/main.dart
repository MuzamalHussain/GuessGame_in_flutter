import 'package:flutter/material.dart';
import 'dart:math';


void main(){
  runApp(MyApp());
}



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num1=0;
  int num2=0;
  int num3=0;
  String result = 'Press Button & Check Reslut';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Container(
            // color: Colors.red,
            child: Column(
              children: [
                Expanded(
                    child: Center(
                      child: Container(
                        height: 100,
                        width: 320,

                        // color: Colors.green,
                        child: Card(
                          shadowColor: Colors.black,
                          elevation: 20,
                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('$result',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                          )),

                        ),
                      ),
                    )
                ),
                Expanded(
                    flex:2,
                    child: Center(
                      child: Container(
                        height: 100,
                        width: 350,
                        // color: Colors.grey,

                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: double.infinity,
                              width: 100,
                              // color: Colors.red,
                              child: Card(
                                // color: Colors.black,
                                shadowColor: Colors.black,
                                elevation: 20,
                                child: TextButton(
                                  child: Image.asset('images/$num1.jpg',),
                                  onPressed: (){
                                    setState(() {
                                      num1=Random().nextInt(13)+1;
                                      result = 'Press Button & Check Reslut';
                                    });
                                  },
                                ),

                              ),
                            ),Container(
                              height: double.infinity,
                              width: 100,
                              // color: Colors.red,
                              child: Card(
                                // color: Colors.black,
                                shadowColor: Colors.black,
                                elevation: 20,
                                child: TextButton(
                                  child: Image.asset('images/$num2.jpg',),
                                  onPressed: (){
                                    setState(() {
                                      num2=Random().nextInt(13)+1;
                                      result = 'Press Button & Check Reslut';
                                    });
                                  },
                                ),

                              ),
                            ),Container(
                              height: double.infinity,
                              width: 100,
                              // color: Colors.red,
                              child: Card(
                                // color: Colors.black,
                                shadowColor: Colors.black,
                                elevation: 20,
                                child: TextButton(
                                  child: Image.asset('images/$num3.jpg',),
                                  onPressed: (){
                                    setState(() {
                                      num3=Random().nextInt(13)+1;
                                      result = 'Press Button & Check Reslut';
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ) ,
                      ),
                    )
                ),

                Expanded(
                    child: Center(
                      child: Container(
                        height: 50,
                        width: 120,
                        // color: Colors.yellow,
                        child: Card(
                          shadowColor: Colors.black,
                          elevation: 20,
                          color: Colors.orange,
                          child: Center(
                              child: TextButton(
                                child: Text('Press for Result',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold ,color: Colors.black),),
                                onPressed: (){
                                  setState(() {
                                    if(num1 == num2 && num2== num3){
                                      result= 'You are Win';
                                    }
                                    else if(num1 == num2 || num2 == num3 || num3==num1){
                                      result= 'Try Again';
                                    }
                                    if(num1 != num2 && num2 != num3){
                                      result= "Chall Nikal Bosree k";
                                    }
                                    num1=0;
                                    num2=0;
                                    num3=0;
                                  });
                                },
                              )
                          ),

                        ),
                      ),
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
