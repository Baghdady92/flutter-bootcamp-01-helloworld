import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MagicButton extends StatelessWidget {
  final String action;
  final IconData icon;
  final String title;

  const MagicButton({
    Key? key,
    required this.action,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(100, 5, 100, 5),
      color: Colors.white,
      child: ListTile(
        onTap: () async {
          if (!await launch(action)) {
            throw 'Could not launch ';
          }
        },
        leading: Icon(icon, color: Colors.teal),
        title: Text(
          title,
          style: const TextStyle(color: Colors.teal),
        ),
      ),
    );
  }
}
