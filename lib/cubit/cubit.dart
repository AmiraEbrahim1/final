
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yisitapp/cubit/states.dart';
import 'package:yisitapp/hiveAdapters/loginhiveAdapter.dart';
import 'package:yisitapp/hiveDatabse/hiveLoginDatabase.dart';
import 'package:yisitapp/model/experimentModel.dart';
import 'package:yisitapp/model/homeModel.dart';
import 'package:yisitapp/model/registerModel.dart';
import 'package:yisitapp/model/subscribedExperimentsModel.dart';
import 'package:yisitapp/model/trendingModel.dart';
import 'package:yisitapp/network/dio.dart';
import 'package:yisitapp/network/endPoints.dart';
import 'package:yisitapp/view/dashboard.dart';
import 'package:yisitapp/view/individialExperiment.dart';
import 'package:yisitapp/view/shared.dart';
import 'package:http/http.dart'as http;

class PubCubit extends Cubit<PubStates>{
  PubCubit():super(InitialState());
  static PubCubit get(context){
    return BlocProvider.of(context);
  }
  bool isExpanded=false;
  int current_index=0;
  void onPress(int index,int current_index){
    print('${current_index}---${index}');
    if(current_index==index){
    isExpanded=!isExpanded;
    emit(OnPressExpandState());}
  }
  void changeIndex(int index) {
    current_index = index;
    emit(IndexChangeState());
  }
  int index=1;
  void changeNav(int indexx){
    index=indexx;
    emit(ChangeDropDownState());
  }
  int? current;
  void changePage(int indexx){
    current=indexx;
    emit(ChangePageState());
  }
  Widget value1=Row(
    children: const [
      Text('Stacy'),
      CircleAvatar(
        child: Image(image: AssetImage('images/Ellipse 578.png'),),
      ),
    ],
  );
  bool isStacy=false;
  void changeAccount(){
    isStacy = !isStacy;
    emit(ChangeAccountState());
  }
  HomeModel? dataModel;
  List <Experiments>physicsList=[];
  List <Experiments>chemistryList=[];
  List <Experiments>biologyList=[];
  List <Experiments>trendingList=[];
  List trendingUUidList=[];
  getData(){
    emit(GetHomeLoadingState());
    DioHelper.getHomeData(
      url: getAllPublishedExperimentUser,
    ).then((value){
      if(value.statusCode==200) {
        dataModel = HomeModel.fromJson(value.data);
        HiveLoginModel m=HiveLoginBoxDB().getFromHive();
        print('token ${m.token}');
        print('token ${m.user?.uuid}');
        getSubscribedExperimentData(m.user!.uuid!, m.token);

        // getSubscribedExperimentData('4ba8dd60-bfdc-4eeb-b6f1-1a885508a988',
        //     'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRoZWNoYW1wc2FudEBnbWFpbC5jb20iLCJwYXNzd29yZCI6IlNhbnRvc2hAMzIzIiwibW9iaWxlIjoiNzU1MDE3MjEyNCIsImlhdCI6MTY2ODI2NzU1OX0.9aHn2d9urVODp74cnwbunkjYeUJyYmNJ--cY-t2bu0M');
        dataModel!.experiments!.forEach((element) {
          if (element.category == "physics") {
            physicsList.add(element);
          }
        });
        print(physicsList.length);
        dataModel!.experiments!.forEach((element) {
          if (element.category == "chemistry") {
            chemistryList.add(element);
          }
        });
        print(physicsList.length);
        dataModel!.experiments!.forEach((element) {
          if (element.category == "biology") {
            biologyList.add(element);
          }
        });
        print(physicsList.length);
        print(value.data);
        getTrendingData();
        emit(GetHomeSuccessState());
      }else{
        emit(GetHomeErrorState(value.data.toString()));
      }
    }).catchError((error){
      print(error.toString());
      print('error');
      emit(GetHomeErrorState(error));
    });

  }
  RegisterModel? dataLoginModel;

   Future <void> getExperimentData({
      String? uuid,
     String? token,
     BuildContext? context
   }
      )async{
    // String url="http://178.128.63.131:3001/getExperiment-user/51007bb0-01a4-4ad2-a1cf-fd655245fee9";
    // http.Response response=await http.get(Uri.parse(url),headers: {
    //   "Accept": "application/json",
    //   "token": token
    // });
    // if (response.statusCode==200){
    //   print('data ${jsonDecode(response.body)}');
    // }
     print('token ${token} \nuuid${uuid}\n url${getExperimentUser}');
    DioHelper.getExprimentData(
      url: getExperimentUser+'/${uuid}',
      headers: {
        "Accept": "application/json",
        "token": token!
      },
      // token: token,
      // uuid: '51007bb0-01a4-4ad2-a1cf-fd655245fee9'
    ).then((value) {
      dataExperimentModel = ExperimentModel.fromJson(value.data);
      print('nuoj${value.data}');
      //printFullText(value.data.toString());
      emit(GetExperimentSuccessState());
      navigateTo(context, IndividualExpriment());
    }).catchError((error) {
      print('mimi${error.toString()}');
      print('mimierror');
      emit(GetExperimentErrorState(error.toString()));
    });
  }
  ExperimentModel? dataExperimentModel;

  Future <void> getSubscribedExperimentData(
      String uuid,
      String? token,
      // BuildContext context

      )async{
    print('token ${token} \nuuid${uuid}\n url${getExperiment_User}');
    DioHelper.getExprimentData(
      url: getExperiment_User+'/${uuid}',
      headers: {
        "Accept": "application/json",
        "token": token!
      },
      // token: token,
      // uuid: '51007bb0-01a4-4ad2-a1cf-fd655245fee9'
    ).then((value) {
      subscribedDataExperimentModel = SubscribedModel.fromJson(value.data);
      print('ANAAAAAAAA${value.data}');
      print(value.data.toString());
      emit(GetSubscribedExperimentSuccessState());
    }).catchError((error) {
      print('ANAAA${error.toString()}');
      print('ANNNNAerror');
      emit(GetSubscribedExperimentErrorState(error.toString()));
    });
  }
  SubscribedModel? subscribedDataExperimentModel;
Future<void> testData()async{
  String url="http://178.128.63.131:3001/get-trending-exp";
  http.Response response=await http.get(Uri.parse(url),headers: {
    "Accept": "application/json",
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFtaXJhZWJyYWhpbTcyMEBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjEyMzQ1Njc4IiwibW9iaWxlIjoiMTA2MzgyMTU3OCIsImlhdCI6MTY2ODIzNzE4Mn0.3D3nTrskwiF9Wv9QrH4tr1tRWNh2-g0bwhyRm0mT0C4"
  });
  if (response.statusCode==200){
    print('data trending test  ${jsonDecode(response.body)}');
  }
}
  TrendingModel? trendingModel;
  getTrendingData(){
    emit(GetTrendingLoadingState());
    DioHelper.getHomeData(
      url: getTrendingExp,
    ).then((value){
      if(value.statusCode==200) {
       trendingModel=TrendingModel.fromJson(value.data);
        // dataModel!.experiments!.forEach((element) {
        //   if (element.uuid == trendingModel.message) {
        //     physicsList.add(element);
        //   }
        // }
      //   Experiments?experiments;
      // for(int i=0;i<dataModel!.experiments!.length;i++){
      //    for(int u=0;u<trendingModel!.message!.length;u++){
      //      if(experiments!.uuid![i]==trendingModel!.message![u].uuid){
      //        //Future<void> ex=getExperimentData(uuid:experiments!.uuid,token:m.token );
      //        trendingList.add(dataModel!.experiments![i]);
      //      }
      //    }
      //
      // };
        //);
       // Future.delayed(Duration(seconds: 2)).then((value) =>{
       if(trendingModel!=null&& dataModel!=null){
           trendingModel!.message!.forEach((element) {
         trendingUUidList.add(element.uuid.toString());
         dataModel!.experiments!.forEach((element1) {
           if (element1.uuid ==element.uuid ) {
             trendingList.add(element1);
           }
         });
       }
      );
      }
     //  }
      // );
       //  print('ana trnding${trendingList.length}');
       //  print('ana trnding${trendingList}');
       // print('ana trending ${trendingModel}');
       //  print('ana trending ${value.data}');
        emit(GetTrendingSuccessState());
      }else{
        emit(GetTrendingErrorState());
      }
    }).catchError((error){
      print(error.toString());
      print('trending error');
      emit(GetTrendingErrorState());
    });

  }
}