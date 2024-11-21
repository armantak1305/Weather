import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheather_app/screens/bloc/weather_bloc.dart';
import 'package:wheather_app/screens/homepage.dart';

import 'domen/api_helper.dart';


void main(){
  runApp(

      BlocProvider (create: (context) => WeatherBloc(apiHelper: ApiHelper()),
          child: MainApp()));
}

class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),);
  }
}