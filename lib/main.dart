import 'package:avaliacao/projetos.dart';
import 'package:avaliacao/contato.dart';
import 'package:avaliacao/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),

              child: Column(
                children: [
                  SizedBox(height: 40),

                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color.fromARGB(255, 41, 117, 179), width: 3),
                    ),

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(333),
                      child: Image.asset(
                        "../assets/images/foto.jpg",
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Text(
                    "Kauan Vinícius",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  Text(
                    "Software - Data Science e Logística | Bosch",
                    style: TextStyle(
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
                          context: context,
                          text: "Ver projetos",
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Projetos(),
                              ),
                            );
                          },
                          color: const Color.fromARGB(255, 41, 117, 179),
                          textColor: Colors.white,
                        ),

                        SizedBox(width: 12),

                        _btn(
                          context: context,
                          text: "Contato",
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Contato(),
                              ),
                            );
                          },
                          color: Colors.white,
                          textColor: const Color.fromARGB(255, 41, 117, 179),
                          border: true

                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30),

                  Text(
                    "SOBRE",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(18),
                    child: Text(
                      "Meu nome é Kauan Vinícius, tenho 17 anos, nascido em Itapira no interior do estado de São Paulo e morando atualmente em Campinas. Atuo na empresa Robert Bosch como Jovem Aprendiz, cursando o terceiro semestre de Desenvolvimento de Sistemas no SENAI Roberto Mange e sou estudante do 3º ano da Escola Estadual Dom Barreto no período noturno.\n\nPrezo pelo desenvolvimento de código limpo, organização, planejamento e prototipação de projetos. Sou comunicativo, trabalho bem em equipe e possuo inglês intermediário, estudando atualmente na CPM (Cidadão Pro Mundo) em parceria com a Universidade Presbiteriana Mackenzie",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.5
                      )
                    ),
                  ),

                  SizedBox(height: 30),

                  Text(
                    "FORMAÇÕES",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 20),

                  _card(
                    "Desenvolvimento de Sistemas",
                    "SENAI Roberto Mange",
                    "Duração: 1 ano e 6 meses • Presença: 100%",
                  ),
                  _card(
                    "Fundamentos da Tecnologia",
                    "Fundação Eufraten",
                    "Duração: 11 meses • Presença: 95%",
                  ),
                  _card(
                    "Artística",
                    "Fundação Eufraten",
                    "Duração: 11 meses • Presença: 90%",
                  ),
                  _card(
                    "Programação para Hardware",
                    "SESI Santos Dumont",
                    "Duração: 5 anos • Presença: 100%",
                  ),
                  _card(
                    "Língua Inglesa",
                    "Cidadão Pro Mundo",
                    "Duração: 5 anos • Presença: 100%",
                  ),
                  _card(
                    "Pacote Office",
                    "Fundação Bradesco",
                    "Duração: 1 ano • Presença: 100%",
                  ),
                  _card(
                    "Hackathon ETS 2026.1",
                    "Robert Bosch LTDA",
                    "Duração: 14 dias • Presença: 100%",
                  ),
                  _card(
                    "Hackathon KNIME MA 2026.1",
                    "Robert Bosch LTDA",
                    "Duração: 7 dias • Presença: 100%",
                  ),
                  _card(
                    "Formação em Dados & IA",
                    "Data Science Academy (DSA)",
                    "Duração: 216 horas • Presença: 95%",
                  ),
                  ),
                  _card(
                    "Automação em KNIME",
                    "Learner Dashboard | KNIME",
                    "Duração: 32 horas • Presença: 100%",
                  ),

                  SizedBox(height: 30),

                  Text(
                    "TECNOLOGIAS",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 20),

                  Column(
                    children: techs.map((tech) {
                      return _card2(
                        tech["name"]!,
                        tech["icon"]!,
                      );
                    }).toList(),
                  ),
                  Footer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Molde de um botão personalizado
  Widget _btn({
    required BuildContext context,
    required String text,
    required VoidCallback onTap,
    required Color color,
    required Color textColor,
    bool border = false,
  }) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        elevation: 0,
        foregroundColor: textColor,
        side: border
              ? BorderSide(color: textColor) 
               : BorderSide.none,

        ).copyWith(
          elevation: WidgetStateProperty.all(0),
        ),
      child: Text(text),
    );
  }

  // Cards componentizados pra não ficar tão repetitivo
  Widget _card(String title, String place, String info) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            blurRadius: 6, 
            color: Colors.black12, 
            offset: Offset(0, 3)),
        ],
      ),

      child: Row(
        children: [
          Icon(
            Icons.workspace_premium, 
            color: Color(0xFFD89F20), 
            size: 28),

          SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16, 
                    fontWeight: FontWeight.w600),
                ),

                Text(
                  place, 
                  style: 
                  TextStyle(
                    color: Colors.grey, 
                    fontSize: 12
                  )),

                Text(
                  info, 
                  style: 
                  TextStyle(
                    color: Colors.grey,
                    fontSize: 12
                  ) 
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final techs = [
  {"name": "HTML5", "icon": "../assets/techs/HTML.svg"},
  {"name": "CSS3", "icon": "../assets/techs/CSS.svg"},
  {"name": "JavaScript", "icon": "../assets/techs/JavaScript.svg"},
  {"name": "TypeScript", "icon": "../assets/techs/TypeScript.svg"},
  {"name": "Django", "icon": "../assets/techs/Django.svg"},
  {"name": "Docker", "icon": "../assets/techs/Docker.svg"},
  {"name": "Flutter", "icon": "../assets/techs/Flutter-Dark.svg"},
  {"name": "TailwindCSS", "icon": "../assets/techs/TailwindCSS-Dark.svg"},
  {"name": "Python", "icon": "../assets/techs/Python-Dark.svg"},
  {"name": "Postman", "icon": "../assets/techs/Postman.svg"},
  {"name": "React", "icon": "../assets/techs/React-Dark.svg"},
  {"name": "Vue JS", "icon": "../assets/techs/VueJS-Dark.svg"},
  {"name": "Angular JS", "icon": "../assets/techs/Angular-Dark.svg"},
  {"name": "Java", "icon": "../assets/techs/Java-Dark.svg"},
  {"name": "Figma", "icon": "../assets/techs/Figma-Dark.svg"},
  {"name": "MySQL", "icon": "../assets/techs/MySQL-Dark.svg"},
  {"name": "FastAPI", "icon": "../assets/techs/FastAPI.svg"},
  {"name": "Arduíno", "icon": "../assets/techs/Arduino.svg"}
  
];

// Outro estilo de card componentizado
Widget _card2(String title, String imagePath) {
  return Container(
    margin: EdgeInsets.only(bottom: 16),
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          blurRadius: 6,
          color: Colors.black12,
          offset: Offset(0, 3)),
      ],
    ),

    child: Row(
      children: [
        SvgPicture.asset(
          imagePath,
          width: 28,
          height: 28,
        ),

        SizedBox(width: 12),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
