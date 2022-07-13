import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:payroll_app/maps_demo.dart';
import 'package:payroll_app/view/attendance/attendance.dart';
import 'package:payroll_app/view/attendance/attendance_list.dart';
import 'package:payroll_app/view/auth/login_screen.dart';
import 'package:payroll_app/view/dashboard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payroll_app/view/homepage.dart';
import 'package:payroll_app/view/inbox/inbox_detail_page.dart';
import 'package:payroll_app/view/inbox/inbox_page.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)),
      initialRoute: '/login',
      debugShowCheckedModeBanner: false,
      routes: {
        // '/': (context) => const LoginPage(),
        '/login': (context) => const LoginScreen(),
        '/homepage': (context) => const HomePage(),
        '/dashboard': (context) => const DashboardPage(),
        '/attendance': (context) => const AttendancePage(),
        '/inbox': (context) => const Inboxpage(),
        '/inbox/show': (context) => const InboxDetailPage(),
        '/attendance/list': (context) => const AttendanceListPage(),
        '/maps-demo': (context) => const GoogleMapsDemo(),
      },
    );
  }
}
