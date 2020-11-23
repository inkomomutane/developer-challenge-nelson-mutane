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
    'this':region,
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


}