import 'package:calendar_app/src/widgets/CalendarStripCustom.dart';
import 'package:flutter/material.dart';
import 'package:calendar_app/src/widgets/TextFieldContainer.dart';
import 'package:calendar_app/src/widgets/TimePicker.dart';


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
   final idController = TextEditingController();
    final descriptionController = TextEditingController();
    TextEditingController timeController = TextEditingController();
     DateTime? date;
  DateTime? time;

  onSelect(data) => date = data;

  setTime(data){
    final now = DateTime.now();
    time = DateTime(now.year, now.month, now.day, data.hour - 6, data.minute);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Visibility(
                visible: false,
            child:TextFieldContainer(
              controller: idController,
              text: "ID",
              keyboard: TextInputType.text,
            ),
          ), 
            TextFieldContainer(
              controller: emailController,
              text: "Nombre del Evento",
              keyboard: TextInputType.text,
            ),
            TextFieldContainer(
              controller: descriptionController,
              text: "Descripción del Evento",
              keyboard: TextInputType.text,
            ),
            // CalendarStripCustom(
            //       onSelect: onSelect,
            //     ),
            TimePicker(
              timeController: timeController,
                  setTime: setTime,
            ),
            
          ],
        ),
      ),
    );
  }
}
