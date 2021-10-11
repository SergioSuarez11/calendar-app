import 'package:calendar_app/src/services/Request_service.dart';
import 'package:flutter/material.dart';
import 'package:calendar_app/src/widgets/TextFieldContainer.dart';
import 'package:calendar_app/src/models/request.dart';
import 'package:calendar_app/src/widgets/TimePicker.dart';

import 'package:provider/provider.dart';

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

  final formKey = GlobalKey<FormState>();
  final idController = TextEditingController();
  final nombreController = TextEditingController();
  final descriptionController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  DateTime? date;
  DateTime? time;
  DateTime selectedDate = DateTime.now();

  onSelect(data) => date = data;

  setTime(data) {
    final now = DateTime.now();
    time = DateTime(now.year, now.month, now.day, data.hour - 6, data.minute);
  }


  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        dateController = TextEditingController(text: picked.toString()); ;
      });
  }

  EventService? _eventService;

  @override
  Widget build(BuildContext context) {
    _eventService = Provider.of<EventService>( context );
    
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Visibility(
              visible: false,
              child: TextFieldContainer(
                controller: idController,
                text: "ID",
                keyboard: TextInputType.text,
              ),
            ),
            TextFieldContainer(
              controller: nombreController,
              text: "Nombre del Evento",
              keyboard: TextInputType.text,
            ),
            TextFieldContainer(
              controller: descriptionController,
              text: "Descripción del Evento",
              keyboard: TextInputType.text,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "${selectedDate.toLocal()}".split(' ')[0],
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () => _selectDate(context), 
                  icon: Icon(Icons.calendar_today)
                  
                )
              ],
            ),
            ),
            TimePicker(
              timeController: timeController,
              setTime: setTime,
            ),
            Container(
              margin: EdgeInsets.only(top: 25, bottom: 30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  color: Colors.blue,
                  onPressed: sendRequest,
                  child: Text(
                    "Agregar Evento",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  sendRequest() async {
    // if(!formKey.currentState!.validate()) return;
    
    // formKey.currentState!.save();
    
    // final SharedPreference _sharedPreference = SharedPreference();
    // int userid = await _sharedPreference.returnValueInt(USERID);

    final evento = EventoModel(
      usuarioid: 1,
      nombre: nombreController.text,
      descripcion: descriptionController.text,
      fecha: selectedDate.toString(),
      hora: timeController.text,
    );
    bool resp = await _eventService!.sendRequest(evento);
    
    if( resp ) {
      // TODO: limpiar componentes y mostrar dialogo de que se envio correctamente.
      nombreController.clear();
      descriptionController.clear();
      timeController.clear();
      // ToastCustom().getToastSuccesful(context);
    } else {
      // TODO: mandar dialogo de que hubo un error durante el envio que lo intente mas tarde. 
      // ToastCustom().getToastError(context);
    }

  }

}
