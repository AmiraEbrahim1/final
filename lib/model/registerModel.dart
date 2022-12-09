class RegisterModel {
  String? status;
  Data? data;

  RegisterModel({this.status, this.data});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  User? user;
  String? token;

  Data({this.user, this.token});

  Data.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class User {
  String? uuid;
  String? createdAt;
  String? updatedAt;
  String? email;
  String? mobile;
  String? password;
  String? role;
  int? monthlyRank;
  int? seasonalRank;
  int? credits;
  String? plan;
  bool? active;
  String? parentName;
  String? studentName;
  bool? verified;

  User(
      {this.uuid,
        this.createdAt,
        this.updatedAt,
        this.email,
        this.mobile,
        this.password,
        this.role,
        this.monthlyRank,
        this.seasonalRank,
        this.credits,
        this.plan,
        this.active,
        this.parentName,
        this.studentName,
        this.verified});

  User.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    email = json['email'];
    mobile = json['mobile'];
    password = json['password'];
    role = json['role'];
    monthlyRank = json['monthly_rank'];
    seasonalRank = json['seasonal_rank'];
    credits = json['credits'];
    plan = json['plan'];
    active = json['active'];
    parentName = json['parent_name'];
    studentName = json['student_name'];
    verified = json['verified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['password'] = this.password;
    data['role'] = this.role;
    data['monthly_rank'] = this.monthlyRank;
    data['seasonal_rank'] = this.seasonalRank;
    data['credits'] = this.credits;
    data['plan'] = this.plan;
    data['active'] = this.active;
    data['parent_name'] = this.parentName;
    data['student_name'] = this.studentName;
    data['verified'] = this.verified;
    return data;
  }
}