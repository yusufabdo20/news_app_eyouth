
import 'package:flutter/material.dart';
import 'package:news_app_eyouth/core/app_utills.dart';
import 'package:news_app_eyouth/views/news_details_screen.dart';

class NewsCardWidget extends StatelessWidget {
  const NewsCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color:Colors.deepPurple
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
        Image.network("https://burst.shopifycdn.com/photos/digital-music-product.jpg?width=1000&format=pjpg&exif=0&iptc=0"), 
        Text("Title", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold , color: Colors.white),) , 
        Text("Description" , style: TextStyle(fontSize: 16, color: Colors.grey),), 
        TextButton(onPressed: (){
             AppUtills.pushToScreen(context, NewsDetailsScreen());
        }, 
        child: Text("read more", style: TextStyle(decoration: TextDecoration.underline , decorationColor: Colors.white),) , 
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          foregroundColor: Colors.white, 
        ),)
    
        ],
      ),
    );
  }
}