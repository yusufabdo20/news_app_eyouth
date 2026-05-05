import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_eyouth/core/services/news_services.dart';
import 'package:news_app_eyouth/models/article_model.dart';
import 'package:news_app_eyouth/widgets/news_card_widget.dart';

class SeachListviewNewsResults extends StatefulWidget {
  const SeachListviewNewsResults({
    required this.searchQuery,
    super.key
  });
final String searchQuery ; 
  @override
  State<SeachListviewNewsResults> createState() => _SeachListviewNewsResultsState();
}

class _SeachListviewNewsResultsState extends State<SeachListviewNewsResults> {
  var futureResponse ; 
  // List articles = [] ;
  List<ArticleModel> articles =[] ;
  // @override
  // void initState() {
  //   if (widget.category == "" || widget.category.isEmpty){
  //   futureResponse = NewsServices(Dio()).getEverythingNews(query:  widget.searchQuery.isNotEmpty ? widget.searchQuery : "everything") ;
  //   }else{
  //   futureResponse = NewsServices(Dio()).getTopHeadLinesCategoryNews(category: widget.category) ;
  //   }
  //   //  
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {

    return FutureBuilder<List<ArticleModel>>(
      future: NewsServices(Dio()).getEverythingNews(query: widget.searchQuery),
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