import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {

  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    //we added 'as http' to the imported dependency to format the API response to JSON
    //using Uri.parse() in the GET method allows you convert StringURL to http URL
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);

    } else {
      print(response.statusCode);
    }
  }
}