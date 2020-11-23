
class Currency{
  final String name;
  final String code;
  final String symbol;

  Currency({this.name,this.code,this.symbol});
  Map<String,dynamic> get  toJson{
    return {
      'name':name,
      'code':code,
      'symbol':symbol
    };
  }

  Currency fromJson(Map<String,dynamic> currency){
    return Currency(
      name: currency['name'],
      code: currency['code'],
      symbol: currency['symbol']
    );
  }

}

