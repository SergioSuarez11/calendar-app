import 'dart:convert';

import 'package:calendar_app/src/models/request.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';


  const headers = { "Content-Type": "application/json", "Accept" : "application/json, text/plain" };
  const url = "http://lit-woodland-00059.herokuapp.com/";
  const events = "api/eventos";
  const sendEvents = "api/insertEvento";

class EventService with ChangeNotifier {

  List<EventoModel> _listEventoModel  = [];

  List<EventoModel> get listTypeRequest => this._listEventoModel;
  set listTypeRequest( List<EventoModel> value ){
    this._listEventoModel = value;
  }
  getTypeRequest() async {
    try {
      final resp = await http.get(Uri.parse(url+events),
        headers: headers,
      );

      final List<dynamic> decodedData = json.decode(resp.body);
      final List<EventoModel> typeRequestsList = [];

      if ( decodedData == null ) return;

      decodedData.forEach( (value){
        final typerequestTemp = EventoModel.fromJson(value);
        typeRequestsList.add( typerequestTemp );
      });

      this.listTypeRequest = typeRequestsList;
      notifyListeners();
      return;
    }
    catch ( e ){
      return;
    }
  }

  Future<bool> sendRequest( EventoModel request ) async{
    final resp = await http.post(Uri.parse(url+sendEvents), 
      body: requestsendModelFromJson(request),
      headers: headers,
    );
    
    if( resp.statusCode > 299 ) return false;

    return true;
  }
}