import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kodmyui/Screens/FeaturedScreen.dart';
import 'package:kodmyui/models/demo_data.dart';

class ArticleDetails extends StatefulWidget {

  final lists list;

  ArticleDetails({this.list});
  @override
  _ArticleDetailsState createState() => _ArticleDetailsState();
}

class _ArticleDetailsState extends State<ArticleDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: SingleChildScrollView(

            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 250,
                      width: double.infinity,

                      child: Stack(
                        children: <Widget>[
                          Hero(
                            tag: widget.list.name,
                            child: ClipRRect(
                              // borderRadius: BorderRadius.circular(20.0),
                              child: Image(
                                height: 280.0,
                                width: double.infinity,
                                image: AssetImage(widget.list.imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 280.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [Colors.black.withOpacity(0.6), Colors.black.withOpacity(0.1),],
                              ),
                              // borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                // Row(
                                //   crossAxisAlignment: CrossAxisAlignment.start,
                                //   children: <Widget>[
                                //     IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                                //         onPressed: (){
                                //           Navigator.push(context, MaterialPageRoute(builder: (context)=> Articles()));
                                //         }),
                                //   ],
                                // ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                                        onPressed: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                                        }),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Articles", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Articles", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),

                    Icon(Icons.favorite, color: Colors.pink, size: 50,)
                  ],
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.list.name,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),

                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/images/profile.JPG'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                widget.list.auther,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.normal,
                                  letterSpacing: 1.5,
                                ),
                              ),
                              Text(
                                widget.list.date,
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal,
                                  letterSpacing: 1.5,
                                ),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 35,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Color(0xff48AFC8),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.add, color: Colors.white,),
                                        Text("Follow", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Text(
                        'Description',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        widget.list.description,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 13.0,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 1.5,
                        ),
                      ),

                      SizedBox(height: 15,),
                    ],
                  ),
                ),
              ],
            ),

        ),
      ),
    );
  }
}
