import 'package:flutter/material.dart';
import 'package:journal/login_form.dart';
import 'package:journal/register_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // set it to false
      backgroundColor: Color.fromARGB(0, 28, 10, 0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Container(
                    height: 450,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                        ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                                backgroundColor: Colors.brown[700],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)
                                )
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const LoginForm()),
                              );
                            },
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                                backgroundColor: Colors.brown[700],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)
                                )
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const RegisterForm()),
                              );
                            },
                            child: Center(
                              child: Text(
                                "Register",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25),
                        child: Image.asset(
                          'assets/icons/logo.png',
                          width: 150,
                        ),
                      ),
                      Text(
                        "Welcome to",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(height:5),
                      Text(
                        "Journal Coffee",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(height:25),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
