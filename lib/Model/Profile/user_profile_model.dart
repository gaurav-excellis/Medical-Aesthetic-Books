class UserProfileModel {
  Data? data;
  bool? status;
  String? message;

  UserProfileModel({this.data, this.status, this.message});

  UserProfileModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    status = json['status'];
    message = json['message'];
  }

  
}

class Data {
  int? id;
  String? name;
  String? email;
  String? phone;
  dynamic emailVerifiedAt;
  dynamic profilePicture;
  int? status;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;

  Data(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.emailVerifiedAt,
      this.profilePicture,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    emailVerifiedAt = json['email_verified_at'];
    profilePicture = json['profile_picture'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  
}
