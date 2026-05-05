import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_eyouth/core/services/news_services.dart';
import 'package:news_app_eyouth/models/article_model.dart';
import 'package:news_app_eyouth/widgets/news_card_widget.dart';

class CustomListViewNewsItemBuilder extends StatefulWidget {
  const CustomListViewNewsItemBuilder({
    super.key,
  });

  @override
  State<CustomListViewNewsItemBuilder> createState() => _CustomListViewNewsItemBuilderState();
}

class _CustomListViewNewsItemBuilderState extends State<CustomListViewNewsItemBuilder> {
  var futureResponse ; 
  // List articles = [] ;
  List<ArticleModel> articles =[] ;
  @override
  void initState() {
    futureResponse = NewsServices(Dio()).getEverythingNews(query: "everything") ; 
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return FutureBuilder<List<ArticleModel>>(
      future: futureResponse ,
      builder: (context, snapshot) {
        if(snapshot.hasData){
          articles = snapshot.data ??[] ;
        return Expanded(
        child: ListView.builder(
          itemCount:articles.length ,
          itemBuilder: (context, index) {
            return  NewsCardWidget(
             article: articles[index],
            );
          },
        ),
      );
        }
        else if (snapshot.hasError){
          return Text("Error", style: TextStyle(color: Colors.red , fontSize: 30),);
        } 
        else{
          return CircularProgressIndicator();
        }
       
      },
    );
  }
}