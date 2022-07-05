import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealth_app/utils/emoticon_face.dart';
import 'package:mentalhealth_app/utils/excercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
      ]),
      body: SafeArea(
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Row(
                  //Greetings row
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Text('Hi, Stella!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    ),),
                          SizedBox(height: 5,),
                          Text('16th May',
                          style: TextStyle(color: Colors.blue[300]),)
        ],
                      ),
                  //Notifications
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)
                    ),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  )
                ],),
                SizedBox(height: 20,),
                //searbar row
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(width: 3,),
                      Text('search',
                      style: TextStyle(
                        color: Colors.white
                      ),)
                    ],
                  ),
                ),
                SizedBox(height: 20,),
// how do you feel
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('How do you feel?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                    Icon(Icons.more_horiz,
                     color: Colors.white,)
                  ],
                ),
                SizedBox(height: 25,),
                //emojis
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //bad
                    Column(
                      children: [
                    EmoticonFace(
                      emoticonFace: ' 😔 ',
                    ),
                        SizedBox(height: 8,),
                        Text('Bad', style: TextStyle(color: Colors.white),)
        ]
                    ),
                    //fine
                    Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: ' 😊 ',
                          ),
                          SizedBox(height: 8,),
                          Text('Fine', style: TextStyle(color: Colors.white),)
                        ]
                    ),
                    //well
                    Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '  😚  ',
                          ),
                          SizedBox(height: 8,),
                          Text('Well', style: TextStyle(color: Colors.white),)
                        ]
                    ),
                    //excellent
                    Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: ' 😆 ',
                          ),
                          SizedBox(height: 8,),
                          Text('Excellent', style: TextStyle(color: Colors.white),)
                        ]
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 25,),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                color: Colors.grey[100]
               ),
              padding: EdgeInsets.all(25),
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Excercises', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20),),
                        Icon(Icons.more_horiz)
                      ],
                    ),
                    SizedBox(height: 20,),

                    //listview of excercises
                   Expanded(
                     child: ListView(
                       children: [
                         ExcerciseTile(
                           icon: Icons.favorite,
                           excerciseName: 'Speaking Skills',
                           numberOfExcercise: 16,
                             color: Colors.orange
                         ),
                         ExcerciseTile(
                           icon: Icons.person,
                           excerciseName: 'Reading Skills',
                           numberOfExcercise: 8,
                           color: Colors.green,
                         ),
                         ExcerciseTile(
                           icon: Icons.star,
                           excerciseName: 'Writing Skills',
                           numberOfExcercise: 20,
                           color: Colors.pink ,
                         ),
                         ExcerciseTile(
                           icon: Icons.lightbulb,
                           excerciseName: 'Cognitive Skills',
                           numberOfExcercise: 15,
                           color: Colors.blue ,
                         )
                       ],
                     ),
                   )
                  ],
                ),
              ),
            ),
          )
        ],

        ),
      ),

    );
  }
}
