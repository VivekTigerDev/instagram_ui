import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Widget firstlist(String imgVal, String text) {
    return Container(
      width: 80.0,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage(
                imgVal,
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        
        leading: Icon(
          Icons.add_box_outlined,
          color: Colors.black54,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                "Instagram",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.black87,
                    fontFamily: "Pacifico",
                    fontSize: 35.0),
              ),
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
            color: Colors.black54,
            icon: Icon(Icons.message_rounded),
            onPressed: () => print("Open Message"),
          ),
        ],
      ),

      // This Container Use For Story Content
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: 86.0,
          color: Colors.white,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              firstlist("images/1.png", "Sasuke Uchiha"),
              firstlist("images/2.png", "Jujustsu"),
              firstlist("images/3.png", "Fairy Tail"),
              firstlist("images/4.png", "Gara "),
              firstlist("images/5.png", "Kakashi Senesi"),
              firstlist("images/6.png", "Madara"),
              firstlist("images/7.png", "Itachi Uchiha"),
              firstlist("images/8.png", "Sakura"),
              firstlist("images/9.png", "Kibo"),
              firstlist("images/10.png", "Kibo Hakamaru"),
              firstlist("images/11.png", "Shino"),
              firstlist("images/12.png", "Sai"),
              firstlist("images/13.png", "Hinata"),
              firstlist("images/14.png", "Naruto"),
              firstlist("images/15.png", "Lee"),
              firstlist("images/16.png", "Pain"),
              firstlist("images/17.png", "Tsunade"),
              firstlist("images/18.png", "Iruka Senesi"),
              firstlist("images/19.png", "Asuma Senesi"),
              firstlist("images/20.png", "Shikamaru"),
            ],
          ),
        ),
      ),

      // This Widgets Is Use For Making BottomAppBar Of Instagram
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 30.0,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.home_filled),
                  onPressed: () => print("Home"),
                  iconSize: 30.0,
                  color: Colors.black54,
                ),
                IconButton(
                  icon: Icon(Icons.search_outlined),
                  onPressed: () => print("Search"),
                  iconSize: 30.0,
                  color: Colors.black54,
                ),
                IconButton(
                  icon: Icon(Icons.movie_filter_rounded),
                  onPressed: () => print("Reel"),
                  iconSize: 30.0,
                  color: Colors.black54,
                ),
                IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: () => print("Notification"),
                  iconSize: 30.0,
                  color: Colors.black54,
                ),
               
                // InkWell class Null safety. A rectangular/CircleAvatar area of
                // a Material that responds to touch
                InkWell(
                  onTap: () => print("Profile"),
                  child: CircleAvatar(
                    radius: 15.0,
                    backgroundImage: AssetImage("images/14.png"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
