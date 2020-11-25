import 'package:xml/xml.dart';

import 'Currency.dart';
import 'Language.dart';
import 'RegionalBlock.dart';
import 'Traslation.dart';

class Country{
  String name;
  List<String> topLevelDomain;
  String alpha2Code;
  String alpha3Code;
  List<int> callingCodes;
  String capital;
  List<String> altSpellings;
  String region;
  String subregion;
  int population;
  List<double> latlng;
  String demonym;
  double area;
  double gini;
  List<String> timezones;
  List<String> borders;
  String nativeName;
  int numericCode;  
  List<Currency> currencies;
  List<Language> languages;
  Translation translations;
  String flag;
  List<RelegionBlock> regionalBlocs;
  String cioc;

  Country({
    this.name,
    this.area,
    this.capital,
    this.flag,
    this.nativeName,
    this.population,
    this.region,
    this.subregion,
    this.timezones,
    this.alpha2Code,
    this.alpha3Code,
    this.altSpellings,
    this.borders,
    this.callingCodes,
    this.cioc,
    this.currencies,
    this.demonym,
    this.gini,
    this.languages,
    this.latlng,
    this.numericCode,
    this.regionalBlocs,
    this.topLevelDomain,
    this.translations
  });

  Map<String,dynamic> get toJson{
    return {
    'name':name,
    'area':area,
    'capital':capital,
    'flag':flag,
    'nativeName':nativeName,
    'population':population,
    'region':region,
    'subregion':subregion,
    'timezones':timezones,
    'alpha2Code':alpha2Code,
    'alpha3Code':alpha3Code,
    'altSpellings':altSpellings,
    'borders':borders,
    'callingCodes':callingCodes,
    'cioc':cioc,
    'currencies':List.generate(currencies.length, (index) => currencies[index].toJson),
    'demonym':demonym,
    'gini':gini,
    'languages':List.generate(languages.length, (index) => languages[index].toJson),
    'latlng':latlng,
    'numericCode':numericCode,
    'regionalBlocs':List.generate(regionalBlocs.length, (index) => regionalBlocs[index].toJson),
    'topLevelDomain':topLevelDomain,
    'translations':translations.toJson
    };
  }

  Country fromJson(Map<String,dynamic> country){
      return Country(
        name: country['name'],
        topLevelDomain:List.generate(country['topLevelDomain'].length, (index) => country['topLevelDomain'][index].toString()),
        alpha2Code:country['alpha2Code'],
        alpha3Code:country['alpha3Code'],
        callingCodes:List.generate(country['callingCodes'].length, (index){  return ((country['callingCodes'][index] != null && country['callingCodes'][index] !='' ) ? int.parse(country['callingCodes'][index].toString().replaceAll(' ', '')):null);}),
        capital: country['capital'],
        altSpellings : List.generate(country['altSpellings'].length, (index) => country['altSpellings'][index].toString()),
        region:country['region'],
        subregion: country['subregion'],
        population:country['population'] ?? int.parse(country['population'].toString().replaceAll(' ', '')),
        latlng: List.generate(country['latlng'].length, (index) => country['latlng'][index] !=null?double.parse(country['latlng'][index].toString()):null ) ,
        demonym: country['demonym'],
        area: (country['area'] !=null && country['area'] !='' )? double.parse(country['area'].toString().replaceAll(' ', '')):null,
        gini: (country['gini'] !=null && country['gini'] !='')? double.parse(country['gini'].toString().replaceAll(' ', '')):null,
        timezones :  List.generate(country['timezones'].length, (index) => country['timezones'][index].toString()),
        borders :  List.generate(country['borders'].length, (index) => country['borders'][index].toString()),
        nativeName: country['nativeName'],
        numericCode: (country['numericCode'] !=null && country['numericCode'] !='')? int.parse(country['numericCode'].toString().replaceAll(' ', '')):null,
        currencies:  List.generate(country['currencies'].length, (index) => Currency().fromJson(country['currencies'][index])),
        languages: List.generate(country['languages'].length, (index) => Language().fromJson(country['languages'][index])),
        translations: Translation().fromJson(country['translations']),
        flag: country['flag'],
        regionalBlocs: List.generate(country['regionalBlocs'].length, (index) => RelegionBlock().fromJson(country['regionalBlocs'][index])),
        cioc: country['cioc'],
      );
  }

  @override
  String toString() {
  return 'Country( ${toJson.toString()})';
  }

  XmlBuilder  toXml(XmlBuilder builder){
    builder.element('Country', nest: () {
    builder.element('name', nest: name);
    builder.element('topLevelDomain', nest: () {
      topLevelDomain.forEach((element) { builder.element('element', nest: element);});
    });
    builder.element('alpha2Code', nest: alpha2Code);
    builder.element('alpha3Code', nest: alpha3Code);
    builder.element('callingCodes', nest: (){
      callingCodes.forEach((element) { 
        builder.element('element', nest: element);
      });
    });

    builder.element('capital', nest: capital);
      builder.element('altSpellings', nest: (){
      altSpellings.forEach((element) { 
        builder.element('element', nest: element);
      });
    });
      builder.element('region', nest: region);
      builder.element('subregion', nest: subregion);
      builder.element('population', nest: population);
        builder.element('latlng', nest: (){
      latlng.forEach((element) { 
        builder.element('element', nest: element);
      });
    });
    builder.element('demonym', nest: demonym);
      builder.element('area', nest: area);
      builder.element('gini', nest: gini);

    builder.element('timezones', nest: (){
      timezones.forEach((element) { 
        builder.element('element', nest: element);
      });
    });
    builder.element('borders', nest: (){
      borders.forEach((element) { 
        builder.element('element', nest: element);
      });
    });
    builder.element('nativeName', nest: nativeName);
    builder.element('numericCode', nest: numericCode);

    builder.element('currencies', nest: (){
      currencies.forEach((element) {
          builder.element('element', nest: (){
            builder.element('name', nest: element.name);
            builder.element('code', nest: element.code);
            builder.element('symbol', nest: element.symbol);
        });
      });
    });

    builder.element('languages', nest: (){
      languages.forEach((element) {
        builder.element('element', nest: (){
            builder.element('name', nest: element.name);
            builder.element('nativeName', nest: element.nativeName);
            builder.element('iso639_1', nest: element.iso639_1);
            builder.element('iso639_2', nest: element.iso639_2);
        });
      });
    });
    builder.element('translations', nest: (){
      builder.element('br', nest: translations.br);
      builder.element('de', nest: translations.de);
      builder.element('es', nest: translations.es);
      builder.element('fa', nest: translations.fa);
      builder.element('fr', nest: translations.fr);
      builder.element('hr', nest: translations.hr);
      builder.element('it', nest: translations.it);
      builder.element('ja', nest: translations.ja);
      builder.element('nl', nest: translations.nl);
      builder.element('pt', nest: translations.pt);
    });
    builder.element('flag', nest: flag);
    builder.element('regionalBlocs', nest: (){
      regionalBlocs.forEach((element) { 
        builder.element('element', nest: (){

              builder.element('name', nest: element.name);
              builder.element('acronym', nest: element.acronym);
                builder.element('otherNames', nest: (){
                element.otherNames.forEach((element) { 
                    builder.element('element', nest: element);
                });
              });
              builder.element('otherAcronyms', nest: (){
                element.otherAcronyms.forEach((element) { 
                    builder.element('element', nest: element);
                });
              });
        });
      });
    });
    builder.element('cioc', nest: cioc);
    });
        return builder;
  }
  dynamic  toCsv(){
         return ['$name','$capital','$region','$subregion','$population','$area','$nativeName','$timezones','$flag'];
  }  

}