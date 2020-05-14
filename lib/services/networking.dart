import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

const String apiKey = '55ffa307cac5cccd9ce8536439d67b09';

class NetworkHelper {

  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var decodedData = convert.jsonDecode(response.body);
      return decodedData;
    } else {
      print(response.statusCode);
      return '{}';
    }
  }

}