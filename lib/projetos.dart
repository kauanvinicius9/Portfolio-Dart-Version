// projetos.dart
import 'package:avaliacao/main.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: const Portfolio()),
  );
}

class Projetos extends StatelessWidget {
  const Projetos({super.key});

  static String routeName = 'Projetos';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),

            child: Column(
              children: [
                SizedBox(height: 40),

                Center(
                  child: Text(
                    "PROJETOS",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(height: 20),

                _card3(
                  context,
                  "CRUD com Spring-Boot",
                  "Um CRUD simples de usuários com Spring-Boot e Java.",
                  "https://github.com/kauanvinicius9/Spring-Boot"
                ),
                _card3(
                  context,
                  "Livraria",
                  "Livraria com autenticação via JWT e consumo de API.",
                  "https://github.com/kauanvinicius9/BookStore"
                ),
                _card3(
                  context,
                  "Cidade Inteligente",
                  "Projeto Full-Stack com autenticação via JWT.",
                  "https://github.com/kauanvinicius9/IP-SmartCity"
                ),
                _card3(
                  context,
                  "Banco de Dados",
                  "Um CRUD simples de usuários com Spring-Boot e Java.",
                  "https://github.com/kauanvinicius9/Back-End"
                ),
                _card3(
                  context,
                  "Comando de Voz",
                  "Comando de voz do Google com Python puro.",
                  "https://github.com/kauanvinicius9/Voice-Command"
                ),
                _card3(
                  context,
                  "FastAPI",
                  "Conceitos básicos de FastAPI com HTML.",
                  "https://github.com/kauanvinicius9/FastAPI"
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _card3(BuildContext context, String title, String desc, String url) {
  return Container(
    margin: EdgeInsets.only(bottom: 25),
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          blurRadius: 6,
          color: Colors.black12,
          offset: Offset(0, 3)
        ),
      ],
    ),

    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                title,
                style: 
                TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                )
              ),

              Text(
                desc,
                style:
                TextStyle(
                  color: Colors.grey,
                  fontSize: 12
                )
              ),

              SizedBox(height: 10),

              TextButton(
                onPressed: () async {
                  Uri uri = Uri.parse(url);
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri, mode: LaunchMode.externalApplication);
                  } else {
                    print("Não foi possível abrir o link: $url");
                  }
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 41, 117, 179),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text("Ver projeto")
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
