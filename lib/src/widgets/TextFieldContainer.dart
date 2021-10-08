import 'dart:async';
import 'package:flutter/material.dart';
import '../global/constants.dart';

class TextFieldContainer extends StatefulWidget {
  final String? text;
  final IconData? icon;
  final TextEditingController? controller;
  final TextInputType? keyboard;
  const TextFieldContainer({
    Key? key,
    this.controller,
    this.text,
    this.keyboard,
    this.icon,
  }) : super(key: key);

  @override
  _TextFieldContainerState createState() => _TextFieldContainerState();
}

class _TextFieldContainerState extends State<TextFieldContainer> {
  String? _valorGeneral;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
      constraints: BoxConstraints(maxHeight: 40),
      child: TextFormField(
          keyboardType: widget.keyboard,
          controller: widget.controller,
          validator: (String? value) {
            if (value == null) return "Llene este campo";
          },
          onSaved: (value) => _valorGeneral = value,
          style: TextStyle(fontSize: 18.0, color: Colors.black),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 23.0, top: 37.0),
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(
              widget.icon,
              size: 30.0,
              color: Colors.red,
            ),
            hintText: widget.text,
            errorStyle: TextStyle(
              color: Colors.red,
            ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          )),
    );
  }
}
