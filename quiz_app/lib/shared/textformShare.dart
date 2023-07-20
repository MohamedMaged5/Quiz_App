import 'package:flutter/material.dart';

class TextFormShare extends StatelessWidget {
  final TextEditingController? controllerr;
  final String? Function(String?)? textvalidator;
  final String? textname;
  final IconData? pretexticon;
  final Widget suftexticon;
  final TextInputType? textkeytype;
  final bool textobscure;
  final Function()? onpressf;
  const TextFormShare(
      {super.key,
      this.controllerr,
      this.textvalidator,
      this.textname,
      this.pretexticon,
      this.suftexticon = const SizedBox(),
      this.textkeytype,
      this.textobscure = false,
      this.onpressf});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: textobscure,
      controller: controllerr,
      validator: textvalidator,
      keyboardType: textkeytype,
      cursorColor: const Color.fromARGB(255, 255, 212, 0),
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:
                const BorderSide(color: Color.fromARGB(255, 255, 212, 0))),
        prefixIcon: Icon(
          pretexticon,
          color: const Color.fromARGB(255, 255, 212, 0),
        ),
        suffixIcon: IconButton(
          icon: suftexticon,
          color: const Color.fromARGB(255, 255, 212, 0),
          onPressed: onpressf,
        ),
        filled: true,
        hintText: textname,
        fillColor: Colors.white,
      ),
    );
  }
}
