import 'package:hive/hive.dart';
import 'package:yisitapp/hiveAdapters/userAdapter.dart';
part 'loginhiveAdapter.g.dart';
@HiveType(typeId:0)
class HiveLoginModel{
  @HiveField(0)
  HiveUserModel? user;
  @HiveField(1)
  String? token;

  HiveLoginModel({this.user, this.token});

  HiveLoginModel.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new HiveUserModel.fromJson(json['user']) : null;
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