class ArticleModel {
final String? title ; 
final String? desc ; 
final String? image ; 
ArticleModel({
  required this.image , 
  required this.title , 
  required this.desc 
}) ;

factory ArticleModel.fromJson(dynamic json){
  return ArticleModel(image: json['urlToImage'], title: json['title'], desc: json['description'] ); 
}
}
