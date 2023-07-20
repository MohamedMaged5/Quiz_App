import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatoContainer extends StatelessWidget {
  final String? textofcontainer;
  final Color? colorofcontainer;
  final String imagename;
  final Function()? ontapfunction;
  // ignore: use_key_in_widget_constructors
  const CatoContainer(
      {this.textofcontainer,
      this.colorofcontainer,
      required this.imagename,
      this.ontapfunction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: ontapfunction,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              opacity: 0.2,
              fit: BoxFit.cover,
              image: AssetImage(imagename),
            ),
            color: colorofcontainer,
          ),
          child: Center(
            child: Text(
              textofcontainer!,
              style: GoogleFonts.pacifico(
                color: Colors.black,
                fontSize: 33,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
