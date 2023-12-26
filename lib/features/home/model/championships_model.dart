import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class ChampionshipsModel {
  
    
    String name;
    String image;
    String id;
    
  ChampionshipsModel({
    
    required this.name,
    required this.image,
    required this.id,
  });

   


  ChampionshipsModel copyWith({
    DateTime? createdAt,
    String? name,
    String? image,
    String? id,
  }) {
    return ChampionshipsModel(
      
      name: name ?? this.name,
      image: image ?? this.image,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      
      'name': name,
      'image': image,
      'id': id,
    };
  }

  factory ChampionshipsModel.fromMap(Map<String, dynamic> map) {
    return ChampionshipsModel(
    
      name: map['name'] as String,
      image: map['image'] as String,
      id: map['id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChampionshipsModel.fromJson(String source) => ChampionshipsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ChampionshipsModel(name: $name, image: $image, id: $id)';
  }

  @override
  bool operator ==(covariant ChampionshipsModel other) {
    if (identical(this, other)) return true;
  
    return 
     
      other.name == name &&
      other.image == image &&
      other.id == id;
  }

  @override
  int get hashCode {
    return 
      name.hashCode ^
      image.hashCode ^
      id.hashCode;
  }
}

