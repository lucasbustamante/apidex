//TODO criar tratamento de type2 quando for null

class Data{
  final String name;
  dynamic sprites;
  final int id;
  final int height;
  final int weight;
  final String sprite;
  final String? type1;
  //final String? type2;

  Data({required this.name, required this.sprites, required this.id,
  required this.height, required this.weight, this.type1, //this.type2,
    required this.sprite

 });

  factory Data.fromJson (Map json){
    return Data(
        name: json['name'],
        sprites: json["sprites"]["other"]["official-artwork"]["front_default"],
        id: json['id'],
        height: json['height'],
        weight:  json['weight'],
        sprite: json['sprites']['other']['official-artwork']['front_default'],
        type1: json['types'][0]['type']['name'],
        //type2: json['types'][1]['type']['name'],

    );

  }

}