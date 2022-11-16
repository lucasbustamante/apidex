class Data{
  final String name;
  dynamic sprites;


  Data({required this.name, required this.sprites});

  factory Data.fromJson (Map json){
    return Data(
        name: json['name'],
        sprites: json["sprites"]["other"]["official-artwork"]["front_default"]);

  }

}