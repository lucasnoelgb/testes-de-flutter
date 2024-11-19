import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmpresaScreen extends StatelessWidget {
  final String urlEmpresa =
      'https://www.empresaexemplo.com'; // Substitua com o link real

  _launchURL() async {
    if (await canLaunch(urlEmpresa)) {
      await launch(urlEmpresa);
    } else {
      throw 'Não foi possível abrir o link';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre a Empresa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(
                'https://link-do-logo-da-empresa.com'), // Substitua com o link do logo
            SizedBox(height: 20),
            Text(
              'A empresa X foi fundada em 1999 e Adam Adamowicz foi um dos designers mais importantes da empresa...',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _launchURL,
              child: Text('Visite o site oficial'),
            ),
          ],
        ),
      ),
    );
  }
}
