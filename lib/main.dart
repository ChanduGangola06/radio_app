import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radio_app/routes/routes.dart';
import 'package:radio_app/utils/custom_color.dart';
import 'package:radio_app/utils/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: CustomColor.primaryColor,
      ),
    );
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (context, child) {
        return MaterialApp(
          title: Strings.appName,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: CustomColor.primaryColor,
            textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
          ),
          initialRoute: Routes.splashScreen,
          routes: Routes.list,
        );
      },
    );
  }
}
