// To parse this JSON data, do
//
//     final numberTriva = numberTrivaFromJson(jsonString);

import 'dart:convert';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

NumberTrivia numberTrivaFromJson(String str) =>
    NumberTrivia.fromJson(json.decode(str));

String numberTrivaToJson(NumberTrivia data) => json.encode(data.toJson());

class NumberTrivia extends Equatable {
  final String text;
  final int number;

  NumberTrivia({
    @required this.text,
    @required this.number,
  });

  @override
  List<Object> get props => [text, number];

  factory NumberTrivia.fromJson(Map<String, dynamic> json) => NumberTrivia(
        text: json["text"],
        number: json["number"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "number": number,
      };
}
