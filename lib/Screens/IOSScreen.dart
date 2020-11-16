import 'package:flutter/material.dart';
import 'package:kodmyui/Screens/AndroidScreen.dart';
import 'package:kodmyui/Screens/FeaturedScreen.dart';
import 'package:kodmyui/models/demo_data.dart';
import 'package:kodmyui/widgets/HomeBanner.dart';

class IOSScreen extends StatefulWidget {
  @override
  _IOSScreenState createState() => _IOSScreenState();
}

class _IOSScreenState extends State<IOSScreen> {
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
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
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

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                    height: 500,
                    color: Colors.white,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: other_list.length,
                      itemBuilder: (BuildContext context, int index) {
                        others rOther = other_list[index];
                        return GestureDetector(
                          onTap: () => {},
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              color: Colors.white,
                              width: 150.0,
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                      child: Stack(
                                        children: <Widget>[
                                          Hero(
                                            tag: rOther.name,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(20.0),
                                              child: Image(
                                                height: 200.0,
                                                width: double.infinity,
                                                image: AssetImage(rOther.imageUrl),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 200.0,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.bottomRight,
                                                colors: [Colors.black.withOpacity(0.6), Colors.black.withOpacity(0.1),],
                                              ),
                                              borderRadius: BorderRadius.circular(15.0),
                                            ),
                                            child: Positioned(
                                              child: Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: <Widget>[
                                                    Text(
                                                      rOther.name,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15.0,
                                                        fontWeight: FontWeight.w600,
                                                        letterSpacing: 1.2,
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
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
