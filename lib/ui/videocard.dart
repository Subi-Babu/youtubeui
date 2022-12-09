import 'dart:html';

import 'package:flutter/material.dart';
import 'package:youtubeui/model/videos.dart';

Widget  videocards (video model) {
  return InkWell(
    onTap: () { },
    child: Container(
    margin: EdgeInsets.only(bottom: 26.0),
    child: Column(children: [
      Stack(children: [
        Container(
          width: double.infinity,
          height: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: Colors.grey,
            image: DecorationImage(image: NetworkImage(model.thumbnail!),
            fit: BoxFit.fill)
           ),
        ),
        Positioned(
          right: 30.0,
          bottom: 20.0,
          child: Container(
          padding: EdgeInsets.symmetric(vertical: 2.0,horizontal: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            color: Colors.white,
          ),
          child: Text(
            model.duration!,
            style: TextStyle(
              color: Colors.white,
            ),
          ),

        ),)
      ],),
      SizedBox(height: 12.0,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 54.0,
            height: 54.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
              image: DecorationImage(
                image:NetworkImage(model.avatar!)),
            ),
          ),
          SizedBox(width: 12.0,),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.videotitle!,
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16,),
              ),
              Text("${model.channel} - ${model.views}")
            ],
           ),),
           IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
        ],
      )
    ]),
  ));
} 