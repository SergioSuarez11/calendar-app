import 'dart:convert';

EventoModel requestsModelFromJson( String str ) => EventoModel.fromJson(json.decode(str)); 
String requestsendModelFromJson( EventoModel data ) => json.encode(data.toJson()); 

class EventoModel {

  final int? usuarioid;
  final String? nombre;
  final String? descripcion;
  final String? fecha;
  final String? hora;


  EventoModel({
    this.usuarioid,
    this.nombre,
    this.descripcion,
    this.fecha,
    this.hora,
  });

  Map<String, dynamic> toJson() => {
    'id_usuario': usuarioid,
    'nombre_evento': nombre,
    'descripci?n_evento': descripcion,
    'fecha': fecha,
    'hora': hora,
  };

  factory EventoModel.fromJson(Map<String, dynamic> json) => new EventoModel(
    usuarioid: json['id_usuario'],
    nombre: json['nombre_evento'],
    descripcion: json['descripci?n_evento'],
    fecha: json['fecha'],
    hora: json['hora'],
  );
}


