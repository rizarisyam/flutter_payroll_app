import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:payroll_app/view/attendance/detail_attendance.dart';
import 'package:payroll_app/view/menu/calendar_page.dart';
import 'package:payroll_app/view/menu/paidleave_page.dart';
import 'package:payroll_app/view/menu/overtime_page.dart';
import 'package:payroll_app/view/menu/salary_page.dart';
import 'package:payroll_app/view/splash_screen.dart';
import 'package:payroll_app/view/submission/paidleave_submission.dart';
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
import 'package:syncfusion_localizations/syncfusion_localizations.dart';

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
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        SfGlobalLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('id', 'ID'),
      ],
      locale: const Locale('id'),
      routes: {
        '/': (context) => const LoginScreen(),
        '/homepage': (context) => const HomePage(),
        '/dashboard': (context) => const DashboardPage(),
        '/inbox': (context) => const Inboxpage(),
        '/inbox/show': (context) => const InboxDetailPage(),
        '/maps-demo': (context) => const GoogleMapsDemo(),
        '/splash-screen': (context) => const SplashScreenPage(),
        '/attendance': (context) => const AttendancePage(),
        '/attendance/list': (context) => const AttendanceListPage(),
        '/menu/calendar': (context) => const CalendarPage(),
        '/menu/leave': (context) => const PaidLeavePage(),
        '/menu/overtime': (context) => const OvertimePage(),
        '/menu/salary': (context) => const CustomBottomSheet(),
        '/submission/leavesubmiss': (context) => const PaidLeaveSubmiss(),
      },
    );
    // return Sizer(builder: (context, orientation, deviceType) {
    //   return MaterialApp(
    //     title: 'Flutter Demo',
    //     theme: ThemeData(
    //         primarySwatch: Colors.blue,
    //         textTheme:
    //             GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)),
    //     initialRoute: '/splash-screen',
    //     debugShowCheckedModeBanner: false,
    //     localizationsDelegates: const [
    //       GlobalMaterialLocalizations.delegate,
    //       GlobalWidgetsLocalizations.delegate,
    //       SfGlobalLocalizations.delegate,
    //     ],
    //     supportedLocales: const [
    //       Locale('id', 'ID'),
    //     ],
    //     locale: const Locale('id'),
    //     routes: {
    //       '/': (context) => const LoginPage(),
    //       '/homepage': (context) => const HomePage(),
    //       '/dashboard': (context) => const DashboardPage(),
    //       '/inbox': (context) => const Inboxpage(),
    //       '/inbox/show': (context) => const InboxDetailPage(),
    //       '/maps-demo': (context) => const GoogleMapsDemo(),
    //       '/splash-screen': (context) => const SplashScreenPage(),
    //       '/attendance': (context) => const AttendancePage(),
    //       '/attendance/list': (context) => const AttendanceListPage(),
    //       '/menu/calendar': (context) => const CalendarPage(),
    //       '/menu/leave': (context) => const PaidLeavePage(),
    //       '/menu/overtime': (context) => const OvertimePage(),
    //       '/menu/salary': (context) => const CustomBottomSheet(),
    //       '/submission/leavesubmiss': (context) => const PaidLeaveSubmiss(),
    //     },
    //   );
    // });
  }
}
