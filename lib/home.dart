import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'magicbutton.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/R.3d5f9f821073907a0e32a95eb02948b5?rik=rSyO3vacTAs%2baA&pid=ImgRaw&r=0'),
            ),
            Text(
              'Ahmed Al-Aziz',
              style: GoogleFonts.pacifico(color: Colors.white, fontSize: 36),
            ),
            Text(
              'Flutter Developer'.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                letterSpacing: 2,
              ),
            ),
            const Divider(
              color: Colors.white,
              indent: 100,
              endIndent: 100,
            ),
            const MagicButton(
                action: 'tel: +9647812531443',
                title: '+964 7812531443',
                icon: Icons.phone),
            const MagicButton(
                action: 'mailto: baghdady92@gmail.com',
                title: 'baghdady92@gmail.com',
                icon: Icons.email),
            const MagicButton(
                action: 'sms: +9647812531443',
                title: 'Message me',
                icon: Icons.message),
          ],
        ),
      ),
    );
  }
}
