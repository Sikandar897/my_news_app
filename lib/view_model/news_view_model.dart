import 'package:my_news_app/models/news_channel_headlines_model.dart';
import 'package:my_news_app/repository/news_repository.dart';

class NewsViewMOdel{
  final _repo = NewsRepository();

  Future<NewsChannelsHeadlinesModel> fetchNewsChannelHeadlinesAPi() async{
    final response = await _repo.fetchNewsChannelHeadlinesAPi();
    return response;
  } 
}