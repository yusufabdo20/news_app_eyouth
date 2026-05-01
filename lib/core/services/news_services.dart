import 'package:dio/dio.dart';
import 'package:news_app_eyouth/core/app_constants.dart';
import 'package:news_app_eyouth/models/article_model.dart';

class NewsServices {

  // final dio = Dio() ;
  final Dio dio ; 
  NewsServices(this.dio) ;

 Future<List<ArticleModel>> getEverythingNews({required String query}) async{
    try{
   Response response = await  dio.get("${AppConstants.baseUrl}/everything?q=$query&apiKey=${AppConstants.apiKey}");
   Map<String , dynamic > jsonData = response.data;
   List articles = jsonData['articles'] ?? [] ; 
   List<ArticleModel> articelModels = []; 
   for (var item in articles ){ 
    ArticleModel articleModel = ArticleModel.fromJson(item) ; 
    articelModels.add(articleModel) ;
   }
   return articelModels ; 
    }catch(error){
        print(error.toString()); 
        return [];
    }
  }
}