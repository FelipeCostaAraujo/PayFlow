class UserModel {
  String? displayName;
  String? email;
  String? id;
  String? photoUrl;

  UserModel({required this.displayName, required this.email, required this.id, required this.photoUrl});

  UserModel.fromJson(Map<String, dynamic> json) {
    displayName = json['displayName'];
    email = json['email'];
    id = json['id'];
    photoUrl = json['photoUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['displayName'] = this.displayName;
    data['email'] = this.email;
    data['id'] = this.id;
    data['photoUrl'] = this.photoUrl;
    return data;
  }

  Map<String, dynamic> toMap() => {
    "name" : displayName,
    "email" : email,
    "id" : id,
    "photoUrl" : photoUrl,
  };
  
  factory UserModel.fromMap(Map<String, dynamic> map){
    return UserModel(displayName: map['displayName'], email: map['email'], id: map['id'], photoUrl: map['photoUrl']);
  }
}

