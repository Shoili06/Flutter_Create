import 'package:flutter/material.dart';
import 'package:cookbook/AppPage.dart';
import 'package:splashscreen/splashscreen.dart';

void main()=>runApp(MaterialApp(home:MyApp(),debugShowCheckedModeBanner:false));class MyApp extends StatelessWidget{@override Widget build(BuildContext context){return SplashScreen(seconds:4,imageBackground:AssetImage("asset/cook1.jpg"),title:Text("My CookBook",textAlign:TextAlign.center,style:TextStyle(fontSize:46.0,color:Colors.white,fontFamily:"Lobster_Two")),navigateAfterSeconds:AppPage(),loaderColor:Colors.white70);}}
