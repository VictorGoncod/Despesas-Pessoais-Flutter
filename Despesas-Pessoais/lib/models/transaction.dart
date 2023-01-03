import 'package:flutter/foundation.dart';


// ignore: empty_constructor_bodies
class Transaction {
  final String id;
  final String title;
  final double valure;
  final DateTime date;

  Transaction({
    required this.id,
    required this.title,
    required this.valure,
    required this.date,
  });
}
