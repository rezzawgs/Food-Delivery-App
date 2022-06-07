import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/base/class_global_var.dart';
import 'package:food_delivery_app/configs/color_utils.dart';
import 'package:food_delivery_app/controllers/OnBoardingScreen.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: primary,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));

    return StatefulWrapper(
        onInit: () {},
        navigatorKey: navigatorKey,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: ClassGlobalVar.appName,
          // theme: appThemeData,
          // themeMode: ThemeMode.dark,
          home: const Onboardingscreen(),
          locale: const Locale("id-ID"),
          navigatorKey: navigatorKey,
        ));
    }
}

class StatefulWrapper extends StatefulWidget {
  final Function onInit;
  final Widget child;
  final GlobalKey<NavigatorState> navigatorKey;
  const StatefulWrapper({required this.onInit, required this.child, required this.navigatorKey});

  @override
  _StatefulWrapperState createState() => _StatefulWrapperState();
}

class _StatefulWrapperState extends State<StatefulWrapper> with WidgetsBindingObserver  {
  @override
  void initState() {
    widget.onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
