import 'package:avaliacao/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: const Portfolio()),
  );
}

class Contato extends StatelessWidget {
  const Contato({super.key});

  static String routeName = 'Contato';

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
                    "CONTATO",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(height: 30),

                TextField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    labelText: "Nome",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 2,
                      ),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 71, 71, 71),
                      ),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 41, 117, 179),
                        width: 2,
                      )
                    )
                  ),
                ),

                SizedBox(height: 30),

                 TextField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 2,
                      ),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 71, 71, 71),
                      ),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 41, 117, 179),
                        width: 2,
                      )
                    )
                  ),
                ),

                SizedBox(height: 30),

                 TextField(
                  keyboardType: TextInputType.datetime,
                  minLines: 1,
                  maxLines: 6,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                    labelText: "Mensagem",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 2,
                      ),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 71, 71, 71),
                      ),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 41, 117, 179),
                        width: 2,
                      ),
                    ),

                    contentPadding: EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 12
                    ),
                  ),
                ),

                SizedBox(height: 30),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 41, 117, 179),
                    padding: EdgeInsets.symmetric(
                      horizontal: 210,
                      vertical: 17,
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),

                  onPressed: (){},
                  child: Text("Enviar", style: TextStyle(color: Colors.white))
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
