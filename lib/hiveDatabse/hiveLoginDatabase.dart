import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
import 'package:yisitapp/hiveAdapters/loginhiveAdapter.dart';
import 'package:yisitapp/model/registerModel.dart';
import 'package:yisitapp/view/shared.dart';
class HiveLoginBoxDB{
  final String boxName=hiveLoginBox;
  late final Box box;
  HiveLoginBoxDB(){
    box=Hive.box<HiveLoginModel>(boxName);
  }
  void addToHive(Data registerModel){
    print('adding0${registerModel.toJson()}');
    HiveLoginModel model =HiveLoginModel.fromJson(registerModel.toJson());
    print('adding${model.toJson()}');
    box.add(model);
    print('added to hive');
  }
  HiveLoginModel getFromHive(){
    int index=box.length;
    for(int i =0;i<index;i++){
      HiveLoginModel m=box.getAt(i);

    }
    // print('test${box.getAt(0)}');
    HiveLoginModel m=box.getAt(0);

    return m;
  }
  void dispose(){
    box.close();
    Hive.close();
  }
}