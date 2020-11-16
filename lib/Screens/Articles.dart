import 'package:flutter/material.dart';
import 'package:kodmyui/Screens/ArticleDetails.dart';
import 'package:kodmyui/Screens/FeaturedScreen.dart';
import 'package:kodmyui/models/demo_data.dart';

class Articles extends StatefulWidget {

  final Category rCategory;

  Articles({this.rCategory});
  @override
  _ArticlesState createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 200,
                width: double.infinity,

                child: Stack(
                  children: <Widget>[
                    Hero(
                      tag: widget.rCategory.imageUrl,
                      child: ClipRRect(
                        child: Image(
                          height: 180.0,
                          width: double.infinity,
                          image: AssetImage('assets/images/bgart.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 180.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [Colors.black.withOpacity(0.99), Colors.black.withOpacity(0.1),],
                        ),
                        // borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                                  }),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text("Articles", style: TextStyle(color: Colors.blue.shade100, fontSize: 25, fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                    ),

                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,10),
                              blurRadius: 20,
                              color: Colors.blue.shade100,
                            ),
                          ],
                        ),
                        child: Row(
                            children: <Widget>[
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Search",
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black.withOpacity(0.8),
                                    ),
                                    suffixIcon: Icon(Icons.search, color: Colors.black,),
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Expanded(
            child: ListView.builder(
              // scrollDirection: Axis.vertical,
              itemCount: widget.rCategory.list.length,
              itemBuilder: (BuildContext context, int index) {
                // Recipe recipes = widget.recipeCategory.recipe[index] as Recipe;
                lists activity = widget.rCategory.list[index] as lists;
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ArticleDetails(
                        list: activity,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                    child: Container(
                      color: Colors.white,
                      width: double.infinity,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Hero(
                                  tag: activity.name,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image(
                                      height: 180.0,
                                      width: double.infinity,
                                      image: AssetImage(activity.imageUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 180.0,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomRight,
                                      colors: [Colors.black.withOpacity(0.99), Colors.black.withOpacity(0.1),],
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Positioned(
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: <Widget>[
                                              Text(
                                                activity.name,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15.0,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 1.2,
                                                ),
                                              ),

                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: <Widget>[
                                                    Icon(Icons.favorite, color: Colors.white,),
                                                    SizedBox(width: 20,),
                                                    Icon(Icons.share, color: Colors.white,),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
