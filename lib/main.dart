import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mhytickettrain/app.dart';
import 'package:mhytickettrain/general_observer.dart';

void main() async {
  Bloc.observer = GeneralObserver();
  runApp(const App());
}
