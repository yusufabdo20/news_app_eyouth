import 'package:dio/dio.dart';
import 'package:news_app_eyouth/core/app_constants.dart';
import 'package:news_app_eyouth/models/article_model.dart';

class NewsServices {

  // final dio = Dio() ;
  final Dio dio ; 
  NewsServices(this.dio) ;
 Future<List<ArticleModel>>getTopHeadLinesCategoryNews({required String category}) async{
    try{
        Response response = await  dio.get("${AppConstants.baseUrl}/top-headlines?category=$category&language=ar&apiKey=${AppConstants.apiKey}");
        Map<String , dynamic > jsonData = response.data;
        List articles = jsonData['articles'] ?? [] ; 
       List <ArticleModel>  articleModels =[]  ;
       for (var item in articles) {
        ArticleModel article = ArticleModel.fromJson(item);
          articleModels.add(article);
       } 
        return articleModels ;
    }catch(error){
        print(error.toString()); 
        return [];
    }
  }

 Future<List<ArticleModel>>getEverythingNews({required String query}) async{
    try{
        Response response = await  dio.get("${AppConstants.baseUrl}/everything?q=$query&apiKey=${AppConstants.apiKey}");
        Map<String , dynamic > jsonData = response.data;
        List articles = jsonData['articles'] ?? [] ; 
       List <ArticleModel>  articleModels =[]  ;
       for (var item in articles) {
        ArticleModel article = ArticleModel.fromJson(item);
          articleModels.add(article);
       } 
        return articleModels ;
    }catch(error){
        print(error.toString()); 
        return [];
    }
  }
}