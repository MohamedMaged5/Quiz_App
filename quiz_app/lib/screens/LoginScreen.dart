import 'package:flutter/material.dart';
import 'package:quizz_app/Global/Global.dart';
import 'package:quizz_app/screens/Register.dart';
import 'package:quizz_app/screens/catoScreen.dart';
import 'package:quizz_app/shared/textformShare.dart';

// ignore: camel_case_types
class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

// ignore: camel_case_types
class _loginscreenState extends State<loginscreen> {
  final formkey = GlobalKey<FormState>();
  bool hide = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 212, 0)),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      height: MediaQuery.of(context).size.height * 1 / 3,
                      width: MediaQuery.of(context).size.width,
                      "images/Login_logo.png",
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  height: MediaQuery.of(context).size.height * 2 / 3,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 187, 187, 187),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(50))),
                  child: Column(
                    children: [
                      const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormShare(
                        controllerr: usernamecontroll,
                        textvalidator: (value) {
                          if (value!.isEmpty) {
                            return ("Please enter your username");
                          } else if (!value[0].contains(RegExp(r'[A-Z]'))) {
                            return "Username must start with an uppercase letter";
                          } else if (value.length < 9) {
                            return "Username should be more than 9 charachters";
                          }
                          return null;
                        },
                        pretexticon: Icons.person,
                        textkeytype: TextInputType.name,
                        textname: "Username",
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      TextFormShare(
                        textvalidator: (value) {
                          if (value!.isEmpty) {
                            return ("Please enter your Password");
                          } else if (value.length < 8) {
                            return ("Password should be more than 8 characters");
                          } else {
                            return null;
                          }
                        },
                        pretexticon: Icons.lock,
                        suftexticon: hide == false
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                        onpressf: () {
                          setState(() {
                            hide = !hide;
                          });
                        },
                        textkeytype: TextInputType.visiblePassword,
                        textname: "Password",
                        textobscure: hide,
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          const Text("New to Quiz App ?"),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Register(),
                                ),
                              );
                            },
                            child: const Text(
                              "Register",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 100),
                          elevation: 15,
                          shadowColor: Colors.black,
                          backgroundColor:
                              const Color.fromARGB(255, 255, 212, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CatoScreen(),
                              ),
                            );
                          }
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.amber,
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = !isChecked;
                              });
                            },
                          ),
                          const Text("Remember me"),
                          const Spacer(),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forget Password ?",
                              style: TextStyle(color: Colors.black),
                            ),
                          )
                        ],
                      ),
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
