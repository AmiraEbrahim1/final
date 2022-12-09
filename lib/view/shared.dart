import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:yisitapp/hiveAdapters/loginhiveAdapter.dart';
import 'package:yisitapp/hiveDatabse/hiveLoginDatabase.dart';
void navigateTo(context,widget){
  Navigator.push(context, MaterialPageRoute(builder:(context)=>widget));
}
String hiveLoginBox='LoginBox';
HiveLoginModel m=HiveLoginBoxDB().getFromHive();
var name='${m.user!.studentName}';
//var uuid='51007bb0-01a4-4ad2-a1cf-fd655245fee9';
// var image='${m.user!.}';
//var token='eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFtaXJhZWJyYWhpbTcyMEBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjEyMzQ1Njc4IiwibW9iaWxlIjoiMTA2MzgyMTU3OCIsImlhdCI6MTY2Njg3NDI4MH0.Dt-EbAxhitqac6rLEEmHSonl5l-Ug7vAkWcWkDTQhzU';