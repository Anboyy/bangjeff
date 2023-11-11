import 'package:bangjeff/model/list_game_model.dart';
import 'package:dio/dio.dart';

class ListGameService {
  Dio dio = Dio();
  Future<List<ListGameModel>?> getGameData() async {
    String url =
        "https://yawanpersonalwebsite.000webhostapp.com/api/produk_game";
    final Response response;
    try {
      response = await dio.get(
        url,
      );
      print(response.data);
      if (response.statusCode == 200) {
        var json1 = response.data;
        //boleh dipakai sesuai kondisi data json
        if (json1 is List) {
          return json1
              .map<ListGameModel>((u) => ListGameModel.fromJson(u))
              .toList();
        }
      }
      return null;
    } on DioException catch (error, stacktrace) {
      print('Exception occured: $error stackTrace: $stacktrace');
      throw Exception(error.response);
    }
  }
}
