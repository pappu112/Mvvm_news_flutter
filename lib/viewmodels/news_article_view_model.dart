import 'package:mvvm_news_app/models/newd_article.dart';
class NewsArticleViewModel{
  NewsArtcle _newsArtcle;
  NewsArticleViewModel({NewsArtcle artcle}): _newsArtcle = artcle;

  String get title{
    return _newsArtcle.title;
  }

   String get description{
    return _newsArtcle.description;
  }

   String get imagrUrl{
    return _newsArtcle.urlToImage;
  }

   String get url{
    return _newsArtcle.urlToImage;
  }

   String get author{
    return _newsArtcle.author;
  }

   String get publishedAt{
    return _newsArtcle.publishedAt;
  }

  


}