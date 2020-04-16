import 'package:flutter/material.dart';
import 'package:cookbook/model.dart';

class AppPage extends StatelessWidget {@override Widget build(BuildContext context){return Scaffold(backgroundColor:Colors.blueGrey[900],body:GridView.count(crossAxisCount:2,childAspectRatio:0.8,padding:EdgeInsets.fromLTRB(10.0,115.0,10.0,50.0),mainAxisSpacing:8.0,crossAxisSpacing:8.0,children:<Widget>[Demo("North Indian","asset/pic/image01.jpg","load_json/nifood_details.json"), Demo("South Indian","asset/pic/image02.jpg","load_json/sifood_details.json"), Demo("Chinese","asset/pic/image03.jpg","load_json/chinese_food_details.json"), Demo("Italian","asset/pic/image04.jpg","load_json/italian_food_details.json"),],),);}} class Demo extends StatelessWidget {String text;String image;String url;Demo(this.text,this.image,this.url);@override Widget build(BuildContext context) {return GestureDetector(child:ClipRRect(borderRadius:BorderRadius.circular(20.0),child:Container(color:Colors.white,child:Stack(fit:StackFit.expand,children:<Widget>[Image.asset(this.image,fit:BoxFit.cover),Center(child:MaterialButton(child:FittedBox(child:Text(this.text,style:TextStyle(fontSize:25.0,color:Colors.white,fontFamily:"Lobster_Two"),)),color: Colors.black.withOpacity(0.15),))]),padding:EdgeInsets.all(3.0)),),onTap:(){Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>Model(this.text,this.image,this.url)));});}}
