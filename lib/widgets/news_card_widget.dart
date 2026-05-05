
import 'package:flutter/material.dart';
import 'package:news_app_eyouth/core/app_utills.dart';
import 'package:news_app_eyouth/models/article_model.dart';
import 'package:news_app_eyouth/views/news_details_screen.dart';

class NewsCardWidget extends StatelessWidget {
  const NewsCardWidget({
required this.article

  });
final ArticleModel article ;
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
        Image.network(article.image ?? "https://miro.medium.com/v2/resize:fit:720/format:webp/1*w_iicbG7L3xEQTArjHUS6g.jpeg"), 
        Text(article.title ?? "", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold , color: Colors.white),) , 
        Text(article.desc ??"" , style: TextStyle(fontSize: 16, color: Colors.grey),), 
        TextButton(onPressed: (){
             AppUtills.pushToScreen(context, NewsDetailsScreen(
article: article,
             ));
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