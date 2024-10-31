import 'dart:convert';

import 'package:esafy/models/hospital_model.dart';
import 'package:esafy/providers/base_provider.dart';

class MoviesProvider extends BaseProvider {
  List<Hospitalmodel> moviesList = [];
  getMovies() async {
    setBusy(true);
    final response =
        await api.getRequest("https://mcuapi.herokuapp.com/api/v1/movies");

    if (response.statusCode == 200) {
      setFailed(false);

      var decodedData = json.decode(response.body)['data'];

      moviesList = List<Hospitalmodel>.from(
          decodedData.map((item) => Hospitalmodel.fromJson(item))).toList();
    } else {
      setFailed(true);
    }
    setBusy(false);
  }
}
