import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_news_app/models/news_channel_headlines_model.dart';
//this class will fetch our api's data 

class NewsRepository{

Future<NewsChannelsHeadlinesModel> fetchNewsChannelHeadlinesAPi() async{

  //make sure to store this token in a safe storage like sharedprefrence if it leaks any one can miss used it. just a hint for future dev

  String url = 'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=efb4c68f13614ce5be1054a64a4d336b' ;

  final response = await http.get(Uri.parse(url));

  if(response.statusCode == 200){
    final body = jsonDecode(response.body.toString());
    return NewsChannelsHeadlinesModel.fromJson(body);
  }
  throw Exception('Error');


}

}