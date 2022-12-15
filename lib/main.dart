import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yisitapp/authScreens/signInPage.dart';
import 'package:yisitapp/cubit/cubit.dart';
import 'package:yisitapp/hiveAdapters/loginhiveAdapter.dart';
import 'package:yisitapp/hiveAdapters/userAdapter.dart';
import 'package:yisitapp/hiveDatabse/hiveLoginDatabase.dart';
import 'package:yisitapp/network/dio.dart';
import 'package:yisitapp/screens/start_screen.dart';
import 'package:yisitapp/view/faqs.dart';
import 'package:yisitapp/view/homeScreen.dart';
import 'package:yisitapp/view/individialExperiment.dart';
import 'package:yisitapp/view/shared.dart';
import 'package:yisitapp/view/subscription.dart';
import 'package:yisitapp/view/test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
  await Hive.initFlutter();
  Hive.registerAdapter(HiveUserModelAdapter());
  Hive.registerAdapter(HiveLoginModelAdapter());
  await Hive.openBox<HiveLoginModel>(hiveLoginBox);
  DioHelper.init();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light));
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const SystemUiOverlayStyle overlayStyle = SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF111111),
      systemNavigationBarDividerColor: Color(0xFF111111));

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(overlayStyle);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => PubCubit()..getData()
            //..getTrendingData()
            //  ..getExperimentData()
            ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: navigatorKey,
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
                backgroundColor: Color.fromRGBO(6, 37, 55, 1),
                iconTheme: IconThemeData(color: Colors.white)),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                backgroundColor: Color.fromRGBO(16, 52, 68, 1),
                selectedItemColor: Color.fromRGBO(27, 163, 147, 1),
                unselectedItemColor: Colors.grey),
            textTheme: const TextTheme(
                bodyText1: TextStyle(color: Colors.white),
                bodyText2: TextStyle(color: Colors.white)),
          ),
          home: HiveLoginBoxDB().box.isNotEmpty
              ? HomeScreen()
              :
              //GettingStartedScreen()
              // HomeScreen()
              // Faqs()
              // GettingStartedScreen()
              SignIn()),
    );
  }
}
