import 'package:flutter/material.dart';
import 'package:todo_app/data/models/auth_form_data.dart';
import 'package:todo_app/data/models/validators.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginFormKey = GlobalKey<FormState>();
  final AuthFormData form = AuthFormData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Register")),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 20,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Access your Account",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Login to continue",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                            Form(
                              key: _loginFormKey,
                              child: Column(
                                spacing: 10,
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                      labelText: "Username",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                    ),
                                    onChanged: (val) => form.username = val,
                                    validator: (val) =>
                                        Validators.username(val),
                                  ),

                                  TextFormField(
                                    decoration: InputDecoration(
                                      labelText: "Password",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                    ),
                                    onChanged: (val) => form.password = val,
                                    validator: (val) =>
                                        Validators.password(val),
                                  ),

                                  Column(
                                    children: [
                                      SizedBox(
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: WidgetStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(14),
                                              ),
                                            ),
                                            backgroundColor:
                                                WidgetStateProperty.all(
                                                  Colors.blue,
                                                ),
                                          ),
                                          child: const Text(
                                            "Login",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Don't have an account?",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      SizedBox(width: 5, height: 0),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(
                                            context,
                                            "/register",
                                          );
                                        },
                                        style: ButtonStyle(
                                          padding: WidgetStateProperty.all(
                                            EdgeInsets.zero,
                                          ),
                                          minimumSize: WidgetStateProperty.all(
                                            Size(0, 0),
                                          ),
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                        ),
                                        child: const Text(
                                          "Register",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.blueAccent,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
