import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      SizedBox(height: 100,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Username'
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height:15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Password'
                              ),
                            ),
                          ),
                        ),
                      ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(20),
                          backgroundColor: Colors.brown[700],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                          )
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Center(
                            child: Text("Login")
                        ),
                      ),
                    ),
                    ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )

    );
  }
}
