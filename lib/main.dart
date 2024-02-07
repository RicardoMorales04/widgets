import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatefulWidget {
  @override
  _MiPaginaState createState() => _MiPaginaState();
}

class _MiPaginaState extends State<MiPagina> {
  Color _containerColor = Colors.blue;
  Color _textColor = Colors.black;
  String _mensaje = '¡Hola, Mundo!';

  void cambiarColor() {
    setState(() {
      _containerColor = Colors.green;
      _textColor = Colors.black;
      _mensaje = 'Botón presionado';
    });
  }

  void restablecerColores() {
    setState(() {
      _containerColor = Colors.blue;
      _textColor = Colors.black;
      _mensaje = '¡Hola, Mundo!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WIDGETS EN FLUTTER'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _mensaje,
              style: TextStyle(fontSize: 24.0, color: _textColor),
            ),
            SizedBox(height: 20.0),
            Container(
              width: 200.0,
              height: 100.0,
              color: _containerColor,
              child: Center(
                child: Text(
                  'Contenedor',
                  style: TextStyle(color: _textColor),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: cambiarColor,
              child: Text('Cambiar color'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: restablecerColores,
              child: Text('Restablecer colores'),
            ),
          ],
        ),
      ),
    );
  }
}


