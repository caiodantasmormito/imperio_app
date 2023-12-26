import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class SportsModel {
  String name;
  String image;
  String id;
  
  SportsModel({
    required this.name,
    required this.image,
    required this.id,
  });
  

  SportsModel copyWith({
    String? name,
    String? image,
    String? id,
  }) {
    return SportsModel(
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

  factory SportsModel.fromMap(Map<String, dynamic> map) {
    return SportsModel(
      name: map['name'] as String,
      image: map['image'] as String,
      id: map['id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SportsModel.fromJson(String source) => SportsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SportsModel(name: $name, image: $image, id: $id)';

  @override
  bool operator ==(covariant SportsModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.image == image &&
      other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ image.hashCode ^ id.hashCode;
}
