
import 'package:dio/dio.dart';
import 'package:mvvm_news_app/models/newd_article.dart';

class WebService{
  var dio = new Dio();

  Future<List<NewsArtcle>> fecthTopHeadlines() async{
    String url = 'http://newsapi.org/v2/everything?q=bitcoin&from=2020-06-13&sortBy=publishedAt&apiKey=8f7419d744e2496184c4ea698825c4bf';
    
    final respons = await dio.get(url);

      if(respons.statusCode == 200){
        final result = respons.data;
        Iterable list = result['articles'];
        return list.map((e) => NewsArtcle.fromjson(e)).toList();

      }else{
        throw Exception("Faoled to load data");

      }

    

    
  }

}