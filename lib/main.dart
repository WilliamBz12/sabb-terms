import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'texto.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Termos de Privacidade",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              countent("1. Geral", geral),
              countent("2. Informações que coletamos", info),
              countent("3. Cookies", cookies),
              countent("4. Informações obtidas por terceiros", info3),
              countent("5. Uso das informações obtidas pelo Sabb", infosab),
              countent("6. Compartilhando seus dados pessoais com terceiros",
                  compartilhamento),
              countent("7. Direitos do titular dos dados e retenção de dados", direitos ),
              countent("8. Sites e links de terceiros", sites  ),
              countent("9. Segurança da informação", seguranca),
            ],
          ),
        ),
      ),
    );
  }

  Widget countent(String title, String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(
          height: 20,
        ),
        Text(text),
      ],
    );
  }
}
