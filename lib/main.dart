// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: const Portfolio()),
  );
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  static String routeName = 'Home';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(333),
                  child: Image.asset(
                    "assets/foto.webp",
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),

                Text(
                  "Kauan Vinícius",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Text(
                  "Software - Data Science e Logística | Bosch",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _btn(
                        text: "Ver projetos",
                        onTap: () {},
                        color: const Color.fromARGB(255, 41, 117, 179),
                        textColor: Colors.white,
                      ),
                      SizedBox(width: 12),
                      _btn(
                        text: "Contato",
                        onTap: () {},
                        color: Colors.white,
                        textColor: const Color.fromARGB(255, 41, 117, 179),
                        border: true,
                      ),
                    ],
                  ),
                ),

                Text(
                  "SOBRE",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(18),
                  child: Text(
                    "Meu nome é Kauan Vinícius, tenho 17 anos, nascido em Itapira no interior do estado de São Paulo e morando atualmente em Campinas. Atuo na empresa Robert Bosch como Jovem Aprendiz, cursando o terceiro semestre de Desenvolvimento de Sistemas no SENAI Roberto Mange e sou estudante do 3º ano da Escola Estadual Dom Barreto no período noturno.\n\nPrezo pelo desenvolvimento de código limpo, organização, planejamento e prototipação de projetos. Sou comunicativo, trabalho bem em equipe e possuo inglês intermediário, estudando atualmente na CPM (Cidadão Pro Mundo) em parceria com a Universidade Presbiteriana Mackenzie",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Molde de um botão personalizado
  Widget _btn({
    required String text,
    required VoidCallback onTap,
    required Color color,
    required Color textColor,
    bool border = false,
  }) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(backgroundColor: color),
      child: Text(text),
    );
  }
}
