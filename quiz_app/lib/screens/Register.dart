import 'package:flutter/material.dart';
import 'package:quizz_app/screens/LoginScreen.dart';
import 'package:quizz_app/shared/textformShare.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final formkey = GlobalKey<FormState>();
  // ignore: non_constant_identifier_names
  final TextEditingController Passwordcon = TextEditingController();
  bool hidep = true;
  bool hidec = true;

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
                      height: MediaQuery.of(context).size.height * 1.5 / 10,
                      width: MediaQuery.of(context).size.width,
                      "images/Login_logo.png",
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  height: MediaQuery.of(context).size.height * 8.5 / 10,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 187, 187, 187),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(50))),
                  child: Column(
                    children: [
                      const Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormShare(
                        textvalidator: (value) {
                          if (value!.isEmpty) {
                            return ("Please enter your username");
                          } else if (!value[0].contains(RegExp(r'[A-Z]'))) {
                            return "Username must start with an uppercase letter";
                          } else if (value.length < 9) {
                            return "Username should be more than 9 characters";
                          }
                          return null;
                        },
                        pretexticon: Icons.person,
                        textkeytype: TextInputType.name,
                        textname: "Username",
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormShare(
                        textvalidator: (value) {
                          if (value!.isEmpty) {
                            return ("Please enter your Phone Number");
                          } else if (value.length < 10) {
                            return "Phone Number should be more than 10 numbers";
                          } else if (!value.contains(RegExp(r'^[0-9]+$'))) {
                            return "Please enter only numeric characters";
                          }
                          return null;
                        },
                        pretexticon: Icons.phone,
                        textkeytype: TextInputType.phone,
                        textname: "Phone",
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormShare(
                        textvalidator: (value) {
                          if (value!.isEmpty) {
                            return ("Please enter your Email");
                          } else if (!value.contains("@") &&
                              !value.contains(".")) {
                            return "Email must contain \"@\" and \".\"";
                          }
                          return null;
                        },
                        pretexticon: Icons.email,
                        textkeytype: TextInputType.emailAddress,
                        textname: "Email",
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormShare(
                        controllerr: Passwordcon,
                        textvalidator: (value) {
                          if (value!.isEmpty) {
                            return ("Please enter New Password you want");
                          } else if (value.length < 8) {
                            return "Password should be more than 8 characters";
                          }
                          return null;
                        },
                        pretexticon: Icons.lock,
                        suftexticon: hidep == false
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                        onpressf: () {
                          setState(() {
                            hidep = !hidep;
                          });
                        },
                        textkeytype: TextInputType.visiblePassword,
                        textname: "Password",
                        textobscure: hidep,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormShare(
                        textvalidator: (value) {
                          if (value!.isEmpty) {
                            return ("Please enter your confirm Password");
                          } else if (value != Passwordcon.text) {
                            return "Your confirm password doesn't match your password";
                          }
                          return null;
                        },
                        pretexticon: Icons.lock,
                        suftexticon: hidec == false
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                        onpressf: () {
                          setState(() {
                            hidec = !hidec;
                          });
                        },
                        textkeytype: TextInputType.visiblePassword,
                        textname: "Confirm Password",
                        textobscure: hidec,
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          const Text("Have an account ?"),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const loginscreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
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
                                builder: (context) => const loginscreen(),
                              ),
                            );
                          }
                        },
                        child: const Text(
                          "Register",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
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
