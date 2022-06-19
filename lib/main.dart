// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      title: "Coffee App UI",
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          leading: Icon(Icons.menu),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.person),
            )
          ],
          elevation: 0,
        ),
        bottomNavigationBar: BottomNavigationBar(
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            ),
          ],
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Find the best coffee for you",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search Coffee..",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600))),
              ),
            ),
            // Row(
            //   children: [
            //     ListView.builder(
            //       itemCount: 5,
            //       scrollDirection: Axis.horizontal,
            //       itemBuilder: ((context, index) {
            //       return(
            //         Text("Cappuccino")

            //       );
            //     })
            //     ),
            //   ],
            // ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 180,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 140,
                              width: 140,
                              child: Image(image: AssetImage("images/coffee_3.jpg")),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("LATTE"),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "With Almond Milk",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("\$ 4.00"),
                                Container(child: Icon(Icons.add),
                                
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(20)
                                ),)
                              ],
                            )
                          ],
                        ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 180,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           Container(
                              height: 140,
                              width: 140,
                              child: Image(image: AssetImage("images/coffee_2.jpg")),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("CAPPUCCINO"),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "With Almond Milk",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("\$ 6.00"),
                                Container(child: Icon(Icons.add),
                                
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(20)
                                ),)
                              ],
                            )
                          ],
                        ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           Container(
                              height: 140,
                              width: 140,
                              child: Image(image: AssetImage("images/coffee_1.jpg")),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("COLD COFFEE"),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Typically foamy on top.",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("\$ 5.00"),
                                Container(child: Icon(Icons.add),
                                
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(20)
                                ),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    ));
  }
}
