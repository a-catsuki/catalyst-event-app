import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

int? increment(int input) {
  return input++;
}

int decrement(int input) {
  return input--;
}

List<String> append(
  List<String> list,
  String element,
) {
  list.add(element);
  return list;
}

List<String> remove(
  List<String> list,
  String element,
) {
  list.remove(element);
  return list;
}

DateTime getDayOfTheWeek() {
  return DateTime.now();
}

List<DateTime> appendDateTime(
  List<DateTime> list,
  DateTime newDate,
) {
  list.add(newDate);
  return list;
}
