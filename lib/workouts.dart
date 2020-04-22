import 'package:flutter/material.dart';
import 'package:stay_fit_app/profile.dart';
import 'package:stay_fit_app/trainers.dart';
import 'package:stay_fit_app/workoutvid1.dart';
import 'package:stay_fit_app/workoutvid2.dart';
import 'package:stay_fit_app/workoutvid3.dart';
import 'package:stay_fit_app/workoutvid4.dart';
import 'package:stay_fit_app/workoutvid5.dart';
import 'package:stay_fit_app/workoutvid6.dart';
import 'package:stay_fit_app/workoutvid7.dart';
import 'package:stay_fit_app/workoutvid8.dart';
import 'home.dart';

class WorkoutPage extends StatefulWidget {
  @override
  _WorkoutPageState createState() => _WorkoutPageState();
}

// Main Body

// Side Navigation Drawer

class _WorkoutPageState extends State<WorkoutPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Workouts"),
      ),

      // body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/banner.jpg'),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    colors: [
                      Colors.lime[100].withOpacity(.8),
                      Colors.lime[100].withOpacity(.1),
                    ]
                  )
                ),

              ),
            ),

            SizedBox(height: 20),

            //Weights Workouts Section

            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Weights Workouts", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.lime[700], fontSize: 25),),
                    SizedBox(height: 20,),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[

                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => Workoutvid1(),
                                )
                              ); 
                            },
                            child: Container(
                              child: makeItem(image: 'assets/images/dom1.jpg', title: 'Weights Workout 1'),
                            ),
                          ),  
                          

                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => Workoutvid5(),
                                )
                              ); 
                            },
                            child: Container(
                              child: makeItem(image: 'assets/images/weights.png', title: 'Weights Workout 2'),
                            ),
                          ),  

                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => Workoutvid1(),
                                )
                              ); 
                            },
                            child: Container(
                              child: makeItem(image: 'assets/images/dom1.jpg', title: 'Weights Workout 1'),
                            ),
                          ),  
                          

                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => Workoutvid5(),
                                )
                              ); 
                            },
                            child: Container(
                              child: makeItem(image: 'assets/images/weights.png', title: 'Weights Workout 2'),
                            ),
                          ),
                          
                          
                        ],
                      ),
                    )
                  ],
                ),
            ),


            SizedBox(height: 30),

            // Core Workouts Section

            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Core Workouts", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.lime[700], fontSize: 25),),
                    SizedBox(height: 20,),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[

                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => Workoutvid2(),
                                )
                              ); 
                            },
                            child: Container(
                              child: makeItem(image: 'assets/images/dom4.jpg', title: 'Core Workout 1'),
                            ),
                          ),  
                          

                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => Workoutvid6(),
                                )
                              ); 
                            },
                            child: Container(
                              child: makeItem(image: 'assets/images/core.png', title: 'Core Workout 2'),
                            ),
                          ),  

                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => Workoutvid2(),
                                )
                              ); 
                            },
                            child: Container(
                              child: makeItem(image: 'assets/images/dom4.jpg', title: 'Core Workout 1'),
                            ),
                          ),  
                          

                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => Workoutvid6(),
                                )
                              ); 
                            },
                            child: Container(
                              child: makeItem(image: 'assets/images/core.png', title: 'Core Workout 2'),
                            ),
                          ),
                          
                          
                        ],
                      ),
                    )
                  ],
                ),
            ),
            

            SizedBox(height: 30),

            // Weightloss Workouts Section

            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Weightloss Workouts", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.lime[700], fontSize: 25),),
                    SizedBox(height: 20,),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[

                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => Workoutvid3(),
                                )
                              ); 
                            },
                            child: Container(
                              child: makeItem(image: 'assets/images/dom2.jpg', title: 'Weightloss Workout 1'),
                            ),
                          ),  
                          

                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => Workoutvid7(),
                                )
                              ); 
                            },
                            child: Container(
                              child: makeItem(image: 'assets/images/weightloss.png', title: 'Weightloss Workout 2'),
                            ),
                          ),  

                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => Workoutvid3(),
                                )
                              ); 
                            },
                            child: Container(
                              child: makeItem(image: 'assets/images/dom2.jpg', title: 'Weightloss Workout 1'),
                            ),
                          ),  
                          

                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => Workoutvid7(),
                                )
                              ); 
                            },
                            child: Container(
                              child: makeItem(image: 'assets/images/weightloss.png', title: 'Weightloss Workout 2'),
                            ),
                          ),
                          
                          
                        ],
                      ),
                    )
                  ],
                ),
            ),
              
    

            SizedBox(height: 30),

            // Cardio Workouts Section

            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Cardio Workouts", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.lime[700], fontSize: 25),),
                    SizedBox(height: 20,),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[

                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => Workoutvid4(),
                                )
                              ); 
                            },
                            child: Container(
                              child: makeItem(image: 'assets/images/dom3.jpg', title: 'Cardio Workout 1'),
                            ),
                          ),  
                          

                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => Workoutvid8(),
                                )
                              ); 
                            },
                            child: Container(
                              child: makeItem(image: 'assets/images/cardio.png', title: 'Cardio Workout 2'),
                            ),
                          ),  

                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => Workoutvid4(),
                                )
                              ); 
                            },
                            child: Container(
                              child: makeItem(image: 'assets/images/dom3.jpg', title: 'Cardio Workout 1'),
                            ),
                          ),  
                          

                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (context) => Workoutvid8(),
                                )
                              ); 
                            },
                            child: Container(
                              child: makeItem(image: 'assets/images/cardio.png', title: 'Cardio Workout 2'),
                            ),
                          ),
                          
                          
                        ],
                      ),
                    )
                  ],
                ),
            ),


            SizedBox(height: 20),


          ],
        ),
      ),



      // Side Navigation Drawer


      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                  Color(0xFF0277BD),
                  Colors.lightBlue[500]
                ])),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('images/user.png',
                            width: 80, height: 80),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'User',
                        style: TextStyle(
                            color: Colors.lightGreenAccent, fontSize: 20.0),
                      ),
                    )
                  ],
                ))),
            CustomListTile(
                Icons.home,
                'Home',
                () => {
                      Navigator.of(context).pop(),
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage()))
                    }),
            CustomListTile(
                Icons.fitness_center,
                'Workouts',
                () => {
                      Navigator.of(context).pop(),
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => WorkoutPage()))
                    }),
            CustomListTile(
                Icons.map,
                'Trainers',
                () => {
                      Navigator.of(context).pop(),
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TrainersPage()))
                    }),
            CustomListTile(
                Icons.person,
                'Profile',
                () => {
                      Navigator.of(context).pop(),
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ProfilePage()))
                    }),
            CustomListTile(
                Icons.close, 'Close', () => Navigator.of(context).pop()),
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              colors: [
                Colors.blue.withOpacity(.1),
                Colors.blue.withOpacity(.1),
              ]
            )
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
          )
        ),
      ),
    );
  }

}

// Custom Navigation Drawer Tile

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
        child: InkWell(
          splashColor: Colors.lightGreenAccent,
          onTap: onTap,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        text,
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}



