import 'dart:convert';

import 'package:netflixclone/api/apikey.dart';
import 'package:netflixclone/models/movies.dart';
import 'package:http/http.dart' as http;

class Api{
  static const _trendingUrl="https://api.themoviedb.org/3/trending/movie/day?api_key=${Constants.apiKey}";
  Future <List<Movies>> getTrendingMovies() async{

    final response= await http.get(Uri.parse(_trendingUrl));
    if(response.statusCode==200){
      final decodeData=json.decode(response.body)['results'] as List;

    }

   }


}
