// contato.dart
import 'package:avaliacao/main.dart';
import 'package:flutter/material.dart';
import 'package:avaliacao/widgets/footer.dart';

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
                  keyboardType: TextInputType.name,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Nome",
                    labelStyle: TextStyle(color: Colors.grey),
                    floatingLabelStyle: TextStyle(
                      color: Color.fromARGB(255, 41, 117, 179)
                    ),

                    hintText: "Digite seu nome",
                    hintStyle: TextStyle(
                      color: Colors.grey
                    ),

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
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    labelStyle: TextStyle(color: Colors.grey),
                    floatingLabelStyle: TextStyle(
                      color: Color.fromARGB(255, 41, 117, 179)
                    ),

                    hintText: "Digite seu e-mail",
                    hintStyle: TextStyle(
                      color: Colors.grey
                    ),

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
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 6,
                  textAlignVertical: TextAlignVertical.top,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Mensagem",
                    labelStyle: TextStyle(color: Colors.grey),
                    floatingLabelStyle: TextStyle(
                      color: Color.fromARGB(255, 41, 117, 179)
                    ),

                    hintText: "Escreva sua mensagem",
                    hintStyle: TextStyle(
                      color: Colors.grey
                    ),

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

                // Botão responsivo
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 41, 117, 179),
                    elevation: 0,
                    shadowColor: Colors.transparent,
                    padding: EdgeInsets.symmetric(
                      vertical: 17,
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  
                  // Botão com PopUp falso
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (dialogContext) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),

                          title: Row(
                            children: [
                              Icon(Icons.check_circle, color: Colors.green),
                              SizedBox(width: 8),
                              Text("Sucesso"),
                            ],
                          ),

                          content: Text(
                            "Seu e-mail foi enviado com sucesso",
                            style: TextStyle(color: Colors.black),
                          ),
                          actions: [
                            TextButton(
                              onPressed: (){
                                Navigator.pop(dialogContext);
                              },
                              child: Text(
                                "OK",
                                style: TextStyle(color: const Color.fromARGB(255, 41, 117, 179)),      
                              ),
                            )
                          ],
                        );
                      },
                    );
                   },
                   child: Text(
                    "Enviar",
                    style: TextStyle(color: Colors.white)
                   )
                 ),
                ),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
