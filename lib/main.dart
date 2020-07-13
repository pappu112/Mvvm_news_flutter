import 'package:flutter/material.dart';
import 'package:mvvm_news_app/screens/news_screen.dart';
import 'package:mvvm_news_app/viewmodels/news_article_list_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => NewsArticleListViewModel(),
            ),
          ],
          child: NewsScreen()),
    );
  }
}


