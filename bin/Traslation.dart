class Translation {
  String de;
  String es;
  String fr;
  String ja;
  String it;
  String br;
  String pt;
  String nl;
  String hr;
  String fa;

  Translation({
    this.br,this.de,this.es,this.fa,this.fr,this.hr,this.it,this.ja,this.nl,this.pt
  });

  Map<String,dynamic> get toJson{
    return {
        'de': de,
        'es': es,
        'fr': fr,
        'ja': ja,
        'it': it,
        'br': br,
        'pt': pt,
        'nl': nl,
        'hr': hr,
        'fa': fr
    };
  }

  Translation fromJson(Map<String,dynamic> translation){
    return Translation(
      de: translation['de'],
      es: translation['es'],
      fr: translation['fr'],
      ja: translation['ja'],
      it: translation['it'],
      br: translation['br'],
      pt: translation['pt'],
      nl: translation['nl'],
      hr: translation['hr'],
      fa: translation['fa']
    );
  }

  
}