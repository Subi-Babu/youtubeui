import 'package:flutter/material.dart';
import 'package:youtubeui/model/videos.dart';
import 'package:youtubeui/ui/videocard.dart';
 void main() {
  runApp(MyApp());
    
}
class  MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "YOUTUBE",
      home: homepage(),
    );

  }}
  class homepage extends StatefulWidget{
  @override  
  _homepageState createState()=> _homepageState();
  }
   class _homepageState extends State <homepage>{
      
      List<video> items = [
        video("thumbnail", "Flutter in 15 seconds", "13:15", "TechyMan", "avatar"," 1k views", "Jun 29,2020"),
        video("thumbnail", "videotitle", "45:56", "Developer Code", "avatar", "899 views", "Feb 12,2020"),
        video("thumbnail", "videotitle", "2:00", "LifeStyles", "https://t3.ftcdn.net/jpg/03/41/52/70/240_F_341527061_N39UNqSXBGJ5Ozv5AlzoNxpBaUZ7Svzf.jpg", "2.7k views", "May 19,2022"),
        video("https://images.pexels.com/photos/1366630/pexels-photo-1366630.jpeg?cs=srgb&dl=pexels-max-andrey-1366630.jpg&fm=jpg&_gl=1*w396ic*_ga*NjkyODEwNTA3LjE2Njg2MDc4Mjg.*_ga_8JE65Q40S6*MTY2ODcwNDM2Mi40LjEuMTY2ODcwNDQyMy4wLjAuMA..", "Explore the world", "1:00", "WorldTour", "https://www.shutterstock.com/image-photo/pretty-smiling-joyfully-female-fair-600w-776697943.jpg", "1k views", "Apr 5,2021"),
       
      ];



     @override
     Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.white10,
       appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme:IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () { },
          icon: Icon(Icons.menu),
          ), 
        title:Text("YouTube",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () { },icon: Icon(Icons.cast)),
           IconButton(onPressed: () { },icon: Icon(Icons.notifications)),
            IconButton(onPressed: () { },icon: Icon(Icons.search)),
        ],       
       ),
      body:SingleChildScrollView(
       child:Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Explore",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24
            ),),
          Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            width: double.infinity,
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 8),
                  child: FilterChip(onSelected: (value) { },
                  elevation: 0,
                  label: Text("All"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 8),
                  child: FilterChip(onSelected: (value) { },
                  elevation: 0,
                  label: Text("Live"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 8),
                  child: FilterChip(onSelected: (value) { },
                  elevation: 0,
                  label: Text("Gaming"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 8),
                  child: FilterChip(onSelected: (value) { },
                  elevation: 0,
                  label: Text("Music"),
                  ),
                ),
              ],
            ),
          ),
          Text("Recommended",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24
          ),),
          SizedBox(height: 16.0,),
         videocards(items[0]),
         videocards(items[1]),
         videocards(items[2]),
         videocards(items[3]),
     
          ],
    ),
       ),
      ),
     bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
           label:"Home",
           ),
           BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
           label:"Add",
           ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
           label:"Explore",
           ),
           BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
           label:"Subscriptions",
           ),
           BottomNavigationBarItem(
            icon: Icon(Icons.library_music_outlined),
          label:"Library",
           ),
        ],

      ) ,


     );
     }  

  }