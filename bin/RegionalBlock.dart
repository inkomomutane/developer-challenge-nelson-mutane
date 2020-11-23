class RelegionBlock{
  String acronym;
  String name;
  List<String> otherAcronyms;
  List<String> otherNames;
  RelegionBlock(
    {
      this.name,this.acronym,this.otherAcronyms,this.otherNames
    }
  );

  Map<String,dynamic> get toJson{
    return {
      'name':name,
      'acronym':acronym,
      'otherAcronyms': otherAcronyms,
      'otherNames':otherNames
    };
  }
  RelegionBlock fromJson(Map<String,dynamic> relegionBlock){
    return RelegionBlock(
      name: relegionBlock['name'],
      acronym: relegionBlock['acronym'],
      otherAcronyms: List.generate(relegionBlock['otherAcronyms'].length, (index)
      {
        return relegionBlock['otherAcronyms'][index];
        }
      ),
    otherNames: List.generate(relegionBlock['otherNames'].length, (index)
      {
        return relegionBlock['otherNames'][index];
        }
      ),
    );
  }



}