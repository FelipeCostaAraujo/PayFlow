class UserModel {
  late String displayName;
  late String email;
  late int id;
  late String photoUrl;

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
}

