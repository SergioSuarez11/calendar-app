import 'package:flutter/material.dart';
import 'package:calendar_app/src/widgets/TextFieldContainer.dart';

class Formulario extends StatefulWidget {
  Formulario({Key? key}) : super(key: key);

  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  @override
  void initState() {
    super.initState();
  }

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            TextFieldContainer(
              controller: emailController,
              text: "Nombre",
              keyboard: TextInputType.text,
            ),
          ],
        ),
      ),
    );
  }
}
