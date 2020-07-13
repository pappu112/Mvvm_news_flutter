class NewsArtcle{
  final String title;
  final String author;
  final String description;
  final String urlToImage;
  final String url;
  final String publishedAt;
  final String content;
  NewsArtcle({this.author,this.description,this.publishedAt,this.title,this.url,this.urlToImage,this.content});

  factory NewsArtcle.fromjson(Map<String, dynamic> json){
    return NewsArtcle(
      title: json['title'],
      author: json['author'],
      description: json['description'],
      urlToImage: json['urlToImage'],
      url: json['url'],
      publishedAt: json['publishedAt'],
      content: json['content']
    );
  }

}