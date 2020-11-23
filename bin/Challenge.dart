import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import 'Country.dart';

void main(List<String> arguments) async {
// final st =  int.parse();

 //print('1340');

 var url = 'https://restcountries.eu/rest/v2/all';

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);

    final countries =  List.generate(jsonResponse.length, (index) => Country().fromJson(jsonResponse[index]));


    print('User ${countries.toString()}.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }


}

/*


 */
/// double number  =  double.parse('234.3');
  //DateTime now  =  DateTime.now().timeZoneOffset('UTC-5:00');


  //print("Casted  = $number ${now.timeZoneOffset}");
  
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
 