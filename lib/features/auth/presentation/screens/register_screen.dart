import 'package:flutter/material.dart';
import 'package:todo_app/data/models/auth_form_data.dart';
import 'package:todo_app/data/models/validators.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
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
                                  "Create a New Account",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Signup for a new account",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                            Form(
                              key: _formKey,
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

                                  TextFormField(
                                    decoration: InputDecoration(
                                      labelText: "Confirm Password",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                    ),
                                    onChanged: (val) =>
                                        form.confirmPassword = val,
                                    validator: (val) =>
                                        Validators.confirmPassword(
                                          val,
                                          form.password,
                                        ),
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
                                            "Register",
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
                                        "Already have an account?",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      SizedBox(width: 5, height: 0),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(
                                            context,
                                            "/login",
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
                                          "Login",
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
