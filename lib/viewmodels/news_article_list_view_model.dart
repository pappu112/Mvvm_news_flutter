import 'package:flutter/cupertino.dart';
import 'package:mvvm_news_app/models/newd_article.dart';
import 'package:mvvm_news_app/services/web_services.dart';
import 'package:mvvm_news_app/viewmodels/news_article_view_model.dart';

enum LoadingStatus{
  completed,
  searching,
  empty
}

class NewsArticleListViewModel with ChangeNotifier {
  LoadingStatus loadingStatus = LoadingStatus.empty;
  List<NewsArticleViewModel> articles = List<NewsArticleViewModel>();
  void topHeadlines () async{
    List<NewsArtcle> newsArticles = await WebService().fecthTopHeadlines();
    loadingStatus = LoadingStatus.searching;
    notifyListeners();
    this.articles = newsArticles.map((e) => NewsArticleViewModel(artcle: e)).toList();
    if(this.articles.isEmpty){
      this.loadingStatus = LoadingStatus.empty;

    }else{

      this.loadingStatus = LoadingStatus.completed;
    }
    notifyListeners();
  }
}