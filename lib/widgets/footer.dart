// Componentização da footer

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  // Tratativa de erro na leitura de URL
  Future<void> _openLink(String url) async {
    final Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);

    } else {
      debugPrint("Ocorreu um erro ao abrir: $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.github),
            color: const Color.fromARGB(255, 41, 117, 179),
            onPressed: () => _openLink("https://github.com/kauanvinicius9"),
          ),

          SizedBox(width: 20),

          IconButton(
            icon: FaIcon(FontAwesomeIcons.linkedin),
            color: const Color.fromARGB(255, 41, 117, 179),
            onPressed: () => _openLink("https://www.linkedin.com/in/kauan-vin%C3%ADcius-953773359?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app"),
          ),

          SizedBox(width: 20),

          IconButton(
            icon: FaIcon(FontAwesomeIcons.instagram),
            color: const Color.fromARGB(255, 41, 117, 179),
            onPressed: () => _openLink("https://www.instagram.com/kauanl01?igsh=MTA1czhyN3liM3l0NQ=="),
          ),
        ],
      )
    );
  }
}