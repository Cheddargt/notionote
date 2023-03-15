import 'package:http/http.dart' as http;

Future<http.Response> fetchPageTitle(String url) {
  var pageInfo = http.get(Uri.parse(url));

  // if contains instagram
  // split {"articleBody":
  // title
  // split ","author"

  return http.get(Uri.parse(url));

}