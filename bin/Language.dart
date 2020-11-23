class Language{
  String iso639_1;
  String iso639_2;
  String name;
  String nativeName;

  Language({this.name,this.iso639_1,this.iso639_2,this.nativeName});
  Map<String,dynamic> get toJson {
    return {
      'iso639_1':iso639_1,
      'iso639_2':iso639_2,
      'name':name,
      'nativeName':nativeName
    };
  }
  Language fromJson(Map<String,dynamic> language){
    return Language(
      name: language['name'],
      iso639_1: language['iso639_1'],
      iso639_2: language['iso639_2'],
      nativeName: language['nativeName']
    );

  }



}

