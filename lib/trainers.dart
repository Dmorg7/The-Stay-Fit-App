import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';


class TrainersPage extends StatefulWidget {
  @override
  _TrainersPageState createState() => _TrainersPageState();
}



class _TrainersPageState extends State<TrainersPage> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
  }
    double zoomVal=5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Trainers"),
      ),
      body: Stack(
        children: <Widget>[
          _buildGoogleMap(context),
          _zoomminusfunction(),
          _zoomplusfunction(),
          _buildContainer(),
        ],
      ),
    );
  }

 Widget _zoomminusfunction() {

    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
            icon: Icon(FontAwesomeIcons.searchMinus,color:Color(0xff6200ee)),
            onPressed: () {
              zoomVal--;
             _minus( zoomVal);
            }),
    );
 }
 Widget _zoomplusfunction() {
   
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
            icon: Icon(FontAwesomeIcons.searchPlus,color:Color(0xff6200ee)),
            onPressed: () {
              zoomVal++;
              _plus(zoomVal);
            }),
    );
 }

 Future<void> _minus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(51.509865, -0.118092), zoom: zoomVal)));
  }
  Future<void> _plus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(51.509865, -0.118092), zoom: zoomVal)));
  }

  
  Widget _buildContainer() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 150.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://firebasestorage.googleapis.com/v0/b/stay-fit-app-da043.appspot.com/o/trainer1.jpg?alt=media&token=2b6ccde5-814a-43ff-8c83-c6cc0f429e1f",
                  51.5225, 0.0642,"Personal Trainer 1"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://firebasestorage.googleapis.com/v0/b/stay-fit-app-da043.appspot.com/o/trainer2.jpg?alt=media&token=5e27aa64-31dc-4eb0-bd2a-4a9cbf5c074e",
                  51.5116, 0.0718,"Personal Trainer 2"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://firebasestorage.googleapis.com/v0/b/stay-fit-app-da043.appspot.com/o/trainer3.jpg?alt=media&token=72a92239-128b-44d8-a579-2f5a9a2a030a",
                  51.5119, 0.0703,"Personal Trainer 3"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://firebasestorage.googleapis.com/v0/b/stay-fit-app-da043.appspot.com/o/trainer4.jpg?alt=media&token=ae68723e-8dee-4d08-99c4-bc49c296c9a4",
                  51.5524, 0.0698,"Personal Trainer 4"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://firebasestorage.googleapis.com/v0/b/stay-fit-app-da043.appspot.com/o/trainer5.jpg?alt=media&token=51c6377c-c0d8-4064-a8bc-d749fd9f1542",
                  51.5326, 0.0579,"Personal Trainer 5"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://firebasestorage.googleapis.com/v0/b/stay-fit-app-da043.appspot.com/o/trainer6.png?alt=media&token=5ec44f1e-7d8b-4723-bc57-c716bde768de",
                  51.5829, 0.0995,"Personal Trainer 6"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _boxes(String _image, double lat,double long,String restaurantName) {
    return  GestureDetector(
        onTap: () {
          _gotoLocation(lat,long);
        },
        child:Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 180,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.fill,
                              image: NetworkImage(_image),
                            ),
                          ),),
                          Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: myDetailsContainer1(restaurantName),
                          ),
                        ),

                      ],)
                ),
              ),
            ),
    );
  }

  Widget myDetailsContainer1(String gymName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(gymName,
            style: TextStyle(
                color: Color(0xff6200ee),
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        SizedBox(height:5.0),
        Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  child: Text(
                "4.1",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              )),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStarHalf,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
               Container(
                  child: Text(
                "(946)",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              )),
            ],
          )),
          SizedBox(height:5.0),
        Container(
                  child: Text(
                "London \u00B7 \u0024\u0024 \u00B7 1.6 mi",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              )),
              SizedBox(height:5.0),
        Container(
            child: Text(
          "Closed \u00B7 Opens 17:00 Thu",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        )),
      ],
    );
  }

  Widget _buildGoogleMap(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:  CameraPosition(target: LatLng(51.509865, -0.118092), zoom: 12),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
          personaltrainer1Marker, personaltrainer2Marker, personaltrainer3Marker, personaltrainer4Marker, personaltrainer5Marker, personaltrainer6Marker
        },
      ),
    );
  }

  Future<void> _gotoLocation(double lat, double long) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(lat, long), zoom: 15,tilt: 50.0,
      bearing: 45.0,)));
  }
}


Marker personaltrainer1Marker = Marker(
  markerId: MarkerId('personaltrainer1'),
  position: LatLng(51.5225, 0.0642),
  infoWindow: InfoWindow(title: 'Personal Trainer 1'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);


Marker personaltrainer2Marker = Marker(
  markerId: MarkerId('personaltrainer2'),
  position: LatLng(51.5116, 0.0718),
  infoWindow: InfoWindow(title: 'Personal Trainer 2'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);


Marker personaltrainer3Marker = Marker(
  markerId: MarkerId('personaltrainer3'),
  position: LatLng(51.5119, 0.0703),
  infoWindow: InfoWindow(title: 'Personal Trainer 3'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

// Personal Trainer Markers

Marker personaltrainer4Marker = Marker(
  markerId: MarkerId('personaltrainer4'),
  position: LatLng(51.5524, 0.0698),
  infoWindow: InfoWindow(title: 'Personal Trainer 4'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);


Marker personaltrainer5Marker = Marker(
  markerId: MarkerId('personaltrainer5'),
  position: LatLng(51.5326, 0.0579),
  infoWindow: InfoWindow(title: 'Personal Trainer 5'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);


Marker personaltrainer6Marker = Marker(
  markerId: MarkerId('trainerpersonal6'),
  position: LatLng(51.5829, 0.0995),
  infoWindow: InfoWindow(title: 'Personal Trainer 6'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);