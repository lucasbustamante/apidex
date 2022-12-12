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
  final int hp;
  final int attack;
  final int defense;
  final int sp_attack;
  final int sp_defense;
  final int speed;

  Data({required this.name, required this.sprites, required this.id,
  required this.height, required this.weight, this.type1, //this.type2,
    required this.sprite, required this.hp, required this.attack,
    required this.defense, required this.sp_attack, required this.sp_defense,
    required this.speed,
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
        hp: json['stats'][0]['base_stat'],
        attack: json['stats'][1]['base_stat'],
        defense: json['stats'][2]['base_stat'],
        sp_attack: json['stats'][3]['base_stat'],
        sp_defense: json['stats'][4]['base_stat'],
        speed: json['stats'][5]['base_stat'],

    );

  }
}