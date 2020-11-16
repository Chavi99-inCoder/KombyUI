import 'package:flutter/material.dart';
import 'package:kodmyui/Screens/AndroidScreen.dart';
import 'package:kodmyui/Screens/IOSScreen.dart';
import 'package:kodmyui/Screens/ProfileScreen.dart';
import 'package:kodmyui/widgets/Categories_Carousel.dart';
import 'package:kodmyui/widgets/Footer.dart';
import 'package:kodmyui/widgets/HomeBanner.dart';
import 'package:kodmyui/widgets/Others_Carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFDFF),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[

                HomeBanner(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xff48AFC8),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.camera_alt,
                                color: Colors.white,
                              ),
                              Text("FEATURED", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> IOSScreen()));
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.favorite,
                                color: Colors.white,
                              ),
                              Text("IOS", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> AndroidScreen()));
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.android,
                                color: Colors.white,
                              ),
                              Text("ANROID", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15,),
                Categories_Carousel(),
                Others_Carousel(),

              ],
            ),
          ],
        ),
      ),

    );
  }
}
