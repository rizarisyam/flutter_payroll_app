import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static String pathName = '/homepage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

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
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
                width: double.infinity,
                height: size.height * 0.35,
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
                )),
            Flexible(
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
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0XFF2043DE),
                              minimumSize: const Size.fromHeight(50),
                              padding: EdgeInsets.zero,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, LoginPage.pathName);
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
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
