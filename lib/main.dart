import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:myapp/pages/dashboard.dart';
import 'pages/splash.dart';
import 'theme/theme_service.dart';

void main() async {
  await GetStorage.init();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    enableLog: true,
    initialRoute: "/",
    getPages: AppPages.routes,
    theme: Themes().lightTheme,
    darkTheme: Themes().darkTheme,
    themeMode: ThemeService().getThemeMode(),
    defaultTransition: Transition.leftToRight,
  ));
}

class AppPages {
  static final routes = [
    GetPage(
      name: "/",
      page: () => App(),
    ),
    GetPage(
      name: "/Dashboard",
      page: () => MyDashBoard(),
    ),
  ];
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness:
          GetPlatform.isAndroid ? Brightness.dark : Brightness.light,
      statusBarIconBrightness:
          GetPlatform.isAndroid ? Brightness.dark : Brightness.light,
    ));
    WidgetsBinding.instance!.addObserver(this);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Splash();
  }
}
