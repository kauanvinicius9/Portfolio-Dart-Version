// contato.dart
import 'package:flutter/material.dart';

class Formacoes extends StatelessWidget {
  const Formacoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),

                const Text(
                  "FORMAÇÕES",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Cards componentizados pra não ficar tão repetitivo
Widget _card(String title, String place, String info) {
  return Container(
    margin: const EdgeInsets.only(bottom: 16),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
          blurRadius: 6,
          color: Colors.black12,
          offset: Offset(0, 3),
        ),
      ],
    ),

    child: Row(
      children: [
        const Icon(
          Icons.workspace_premium,
          color: Color(0xFFD89F20),
          size: 28,
        ),

        const SizedBox(width: 12),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title, // ✅ corrigido
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),

              Text(
                place,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),

              Text(
                info,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}