import 'dart:convert' as convert;
import 'package:excel/excel.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:xml/xml.dart';
import 'Country.dart';
import 'package:csv/csv.dart';
import 'dart:io';

void main(List<String> arguments) async {
  var url = 'https://restcountries.eu/rest/v2/all';
  var response = await http.get(url);
  
  if (response.statusCode == 200) {
  
    var jsonResponse = convert.jsonDecode(response.body);
    final countries =  List.generate(jsonResponse.length, (index) => Country().fromJson(jsonResponse[index]));
    final excel = Excel.createExcel();
    final builder = XmlBuilder();
    var file = File('file.xml');
    var sink = file.openWrite();

    var filex = File('file.csv');
    var sinkx = filex.openWrite();

    var csvCounries = <List<dynamic>>[['name','capital','region','subregion','population','area','nativeName','timezones','flag']];

    excel.appendRow('Countries',['name','capital','region','subregion','population','area','nativeName','timezones','flag']);
    
    countries.forEach((element) { 
      csvCounries.add(element.toCsv());
      excel.appendRow('Countries', element.toCsv());
    });

       
    builder.processing('xml', 'version="1.0"');
    builder.element('Countries', nest: () {
      countries.forEach((element) {
        element.toXml(builder);
      });
    });

    final bookshelfXml = builder.buildDocument();
    final stream = const ListToCsvConverter().convert(csvCounries);

    sink.write(bookshelfXml);
    await sink.close();;

    sinkx.write(stream);
    await sinkx.close();

    await excel.encode().then((onValue) {
        File(join('Contries.xlsx'))
        ..createSync(recursive: true)
        ..writeAsBytesSync(onValue);
    });

  } else {
    print('Error status code: ${response.statusCode}.');
  }
  
}