class Data{
  final String name;
  dynamic sprites;
  final int id;
  final int height;
  final int weight;
  final String? type1;


  Data({required this.name, required this.sprites, required this.id,
  required this.height, required this.weight, this.type1,

 });

  factory Data.fromJson (Map json){
    return Data(
        name: json['name'],
        sprites: json["sprites"]["other"]["official-artwork"]["front_default"],
        id: json['id'],
        height: json['height'],
    weight:  json['weight'],
    type1: json['types'][0]['type']['name'],
    );

  }

}