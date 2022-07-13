import 'package:flutter/material.dart';

import 'EmotionFaces.dart';
import 'listView.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.message),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: ""),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Hi name
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Hi,Johne!",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white,
                            ),),
                            SizedBox(height: 8,),
                            Text("11 July 2022",style: TextStyle(
                              color: Colors.blue[200],
                              fontWeight: FontWeight.bold,
                            ),)
                          ],

                        ),
                        //notification

                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12)
                          ),
                          padding: EdgeInsets.all(12),
                          child: Icon(Icons.notifications,
                            color: Colors.white,
                          ),
                        ),

                      ],
                    ),

                    SizedBox(height: 25,),

                    //Search Bar

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Icon(Icons.search,color: Colors.white,),
                          SizedBox(width: 5,),
                          Text("Search...",style: TextStyle(
                            color: Colors.white,
                          ),)
                        ],
                      ),
                    ),

                    SizedBox(height: 25,),

                    //how do u feel
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("How do you feel!",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,

                        ),),
                        Icon(Icons.more_horiz,color: Colors.white,),
                      ],
                    ),
                    SizedBox(height: 25,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Column(
                          children: [
                            EmotionFace(image: Image.asset('assets/emoji1.png'),),
                            SizedBox(height: 8,),
                            Text("Love",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),)
                          ],
                        ),
                        Column(
                          children: [
                            EmotionFace(image: Image.asset('assets/emoji2.png'),),
                            SizedBox(height: 8,),
                            Text("Laugh",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),)
                          ],
                        ),
                        Column(
                          children: [
                            EmotionFace(image: Image.asset('assets/emoji3.png'),),
                            SizedBox(height: 8,),
                            Text("More",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),)
                          ],
                        ),
                        Column(
                          children: [
                            EmotionFace(image: Image.asset('assets/emoji6.png'),),
                            SizedBox(height: 8,),
                            Text("Cunfused",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),)
                          ],
                        ),


                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),

              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          //exercises text
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Exercises",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                            Icon(Icons.more_horiz),
                          ],

                        ),
                        //scroll view exercises propaties

                        SizedBox(height: 10,),

                        Expanded(
                          child: ListView(
                            children: [
                              listofTile(
                                icon: Icons.favorite,
                                  exercisesname: "Speaking Skills",
                                noOfExrcises: 15,
                                color: Colors.orange,
                              ),
                              listofTile(
                                icon: Icons.person,
                                exercisesname: "Reading Skills",
                                noOfExrcises: 10,
                                color: Colors.green,
                              ),
                              listofTile(
                                icon: Icons.star,
                                exercisesname: "Writing Skills",
                                noOfExrcises: 8,
                                color: Colors.purpleAccent,
                              ),

                            ],
                          ),
                        ),


                      ],
                    ),
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
