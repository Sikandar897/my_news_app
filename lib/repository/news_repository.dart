import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_news_app/models/news_channel_headlines_model.dart';

class NewsRepository {
  Future<NewsChannelsHeadlinesModel> fetchNewsChannelHeadlinesAPi(String name) async {
    
    // Use the provided 'name' parameter to dynamically set the news source in the API URL
    String url = 'https://newsapi.org/v2/top-headlines?sources=$name&apiKey=efb4c68f13614ce5be1054a64a4d336b';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body.toString());
      return NewsChannelsHeadlinesModel.fromJson(body);
    }

    // If the API call is not successful, throw an exception
    throw Exception('Error');
  }
}
