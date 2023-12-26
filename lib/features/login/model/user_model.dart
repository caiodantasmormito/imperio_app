import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class UserModel {
  String authToken;
  String refreshToken;
  
  UserModel({
    required this.authToken,
    required this.refreshToken,
  });

  UserModel copyWith({
    String? authToken,
    String? refreshToken,
  }) {
    return UserModel(
      authToken: authToken ?? this.authToken,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authToken': authToken,
      'refreshToken': refreshToken,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      authToken: map['authToken'] as String,
      refreshToken: map['refreshToken'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserModel(authToken: $authToken, refreshToken: $refreshToken)';

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.authToken == authToken &&
      other.refreshToken == refreshToken;
  }

  @override
  int get hashCode => authToken.hashCode ^ refreshToken.hashCode;
}
