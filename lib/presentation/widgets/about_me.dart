import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 50,
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
              height: 128.w,
              width: 424.w,
              child: const Text(
                '1+ Years of Experience',
                style: TextStyle(
                  fontSize: 20.0, // Taille de la police
                  fontWeight: FontWeight.bold, // Poids de la police (gras)
                  color: Colors.black, // Couleur du texte
                  fontFamily:
                      'Roboto', // Police de caractères (assurez-vous que la police est incluse dans votre projet)
                  letterSpacing: 1.2, // Espacement entre les lettres
                ),
              )),
        ),
        const Expanded(
          flex: 2,
          child: Column(
            children: [
              Text(
                'Hey, I’m Eleanor Scott Senior Product Designer at Google',
                style: TextStyle(fontSize: 12),
              ),
              Text(
                'Aenean mi mauris, porta nec ante non, interdum pulvinar risus. Mauris gravida efficitur venenatis. Praesent quis porta ex. Sed rutrum risus id urna commodo, non ullamcorper tellus aliquet. Suspendisse lobortis sem malesuada',
                style: TextStyle(fontSize: 12),
              ),
              Text(
                'Eleanor Scott',
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 30,
        )
      ],
    );
  }
}
