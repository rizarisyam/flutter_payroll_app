import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:payroll_app/models/auth/user_login.dart';
import 'package:payroll_app/services/auth_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  final AuthService authService = AuthService();

  bool _isLoading = false;

  Future<Userlogin?> loginHandler() async {
    Userlogin? retriveUser;

    setState(() {
      _isLoading = true;
    });

    Future.delayed(const Duration(seconds: 5), () async {
      try {
        Userlogin? retrieveUser = await authService.login(
            email: emailTextController.text,
            password: passwordTextController.text);

        if (retrieveUser != null) {
          // ignore: use_build_context_synchronously
          Navigator.pushNamed(context, '/homepage');
        }
      } on DioError catch (e) {
        debugPrint('Error from login screen : ${e.error.toString()}');
      }
    });

    return retriveUser;
  }

  // Future<void> checkUserLogging() async {
  //   Userlogin? userLogin = await loginHandler();

  //   if (userLogin != null) {
  //     Navigator.of(context).pushNamed('/homepage');
  //   }

  //   Navigator.of(context).pushNamed('/login');
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // checkUserLogging();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    emailTextController.dispose();
    passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        // physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: size.height * 0.40,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/bg_header_login.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/heading_login.png'),
                          const Text(
                            "Login with your account to see our features",
                            style: TextStyle(
                                color: Color(0XFFE6E6E6), fontSize: 15),
                          ),
                        ],
                      )))
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: size.height * 0.70,
              child: Container(
                decoration: const BoxDecoration(color: Color(0XFFE5E5E5)),
                width: double.infinity,
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Center(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: TextFormField(
                              controller: emailTextController,
                              textAlignVertical: TextAlignVertical.center,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.people),
                                  hintText: "Email"),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: TextFormField(
                              obscureText: true,
                              controller: passwordTextController,
                              textAlignVertical: TextAlignVertical.center,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.lock),
                                  hintText: "Password"),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Column(
                            children: [
                              _isLoading
                                  ? ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: const Color(0XFF2043DE),
                                      ),
                                      onPressed: loginHandler,
                                      child: const ListTile(
                                        leading: CircularProgressIndicator(
                                          strokeWidth: 3,
                                          backgroundColor:
                                              Color.fromARGB(255, 57, 90, 236),
                                          color: Colors.white,
                                        ),
                                        title: Text(
                                          'Loading',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ))
                                  : ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: const Color(0XFF2043DE),
                                      ),
                                      onPressed: loginHandler,
                                      child: const Text(
                                        'Login',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
