import 'package:flutter/material.dart';
import 'package:stay_fit_app/trainers.dart';
import 'package:stay_fit_app/workouts.dart';

import 'home.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}


// Side Navigation Drawer

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: FlutterLogo(size: 100.0,),
      ),
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
            CustomListTile(Icons.home, 'Home', () => {
              Navigator.of(context).pop(),
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HomePage()
              ))
            }),

            CustomListTile(Icons.fitness_center, 'Workouts', () => {
              Navigator.of(context).pop(),
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => WorkoutPage()
              ))
            }),
            
            CustomListTile(Icons.map, 'Trainers', () => {
              Navigator.of(context).pop(),
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => TrainersPage()
              ))
            }),

            CustomListTile(Icons.person, 'Profile', () => {
              Navigator.of(context).pop(),
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProfilePage()
              ))
            }),

            CustomListTile(Icons.close, 'Close', () => Navigator.of(context).pop()),
          ],
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