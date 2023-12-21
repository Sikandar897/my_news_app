import 'package:my_news_app/models/news_channel_headlines_model.dart';
import 'package:my_news_app/repository/news_repository.dart';

class NewsViewMOdel {
  final _repo = NewsRepository();

  Future<NewsChannelsHeadlinesModel> fetchNewsChannelHeadlinesAPi(String name) async {
    final response = await _repo.fetchNewsChannelHeadlinesAPi(name);
    return response;
  } 
}
