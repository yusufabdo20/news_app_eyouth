class ArticleModel {
  final String? title;
  final String? desc;
  final String? image;
  final String? auther;
  final String? url;
  final String? publishedAt;
  final String? content;
  final String? source;

  ArticleModel({
    required this.image,
    required this.title,
    required this.desc,
    required this.auther,
    this.url,
    this.publishedAt,
    this.content,
    this.source,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      desc: json['description'],
      auther: json['author'],
      url: json['url'],
      publishedAt: json['publishedAt'],
      content: json['content'],
      source: json['source']?['name'],
    );
  }

}
