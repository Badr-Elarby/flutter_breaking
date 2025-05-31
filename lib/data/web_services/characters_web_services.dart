import 'package:dio/dio.dart';
import 'package:flutter_breaking/constants/strings.dart';

class CharactersWebServices {
  late Dio dio;

  CharactersWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: basrUrl,
      receiveDataWhenStatusError: true,
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get("character");
      print(response.data.toString());
      return response.data["results"];
    } on Exception catch (e) {
      print(e.toString());
      return [];
    }
  }
}
