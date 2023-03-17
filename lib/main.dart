import 'package:bloc/bloc.dart';
import 'package:counterfadybloc/bloc_observer.dart';
import 'package:counterfadybloc/view/home.dart';
import 'package:flutter/material.dart';

void main() {
  Bloc.observer = const SimpleBlocObserver();
  runApp(const MyHomePage());
}
