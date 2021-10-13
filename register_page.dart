import 'package:flutter/material.dart';

final TextEditingController _controllerNome = TextEditingController();
final TextEditingController _controllerIdade = TextEditingController();
final TextEditingController _controllerLocal = TextEditingController();

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text('App do Produto'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(80.0),
                  child: Text(
                    'Cadastro Produtor:',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: TextField(
                    controller: _controllerNome,
                    decoration: InputDecoration(
                        labelText: 'Nome', border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: TextField(
                    controller: _controllerIdade,
                    keyboardType:TextInputType.number,
                    decoration: InputDecoration(
                        labelText: 'idade', border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: TextField(
                    controller: _controllerLocal,
                    decoration: InputDecoration(
                        labelText: 'localização', border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  width: 50,
                  height: 180,
                ),
                ElevatedButton(onPressed: () {
                  final String nome = _controllerNome.text;
                  final int idade = int.parse(_controllerIdade.text);
                  final String local = _controllerLocal.text;
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Cadastrado'),
                          content: Text(
                              'Dados: nome: $nome, idade: $idade, localização: $local'),
                          actions: <Widget>[
                            ElevatedButton(
                              child: Text('ok'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            )
                          ],
                        );
                      });
                },
                child: Text('Cadastrar'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50)
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
