import 'package:flutter/material.dart';import 'dart:convert';import 'package:gradient_widgets/gradient_widgets.dart';import 'package:my_cookbook/recipe.dart';class Model extends StatelessWidget {String text;String imagepath;String url;Model(this.text, this.imagepath, this.url);@override Widget build(BuildContext context) {return CustomScrollView(slivers:<Widget>[SliverAppBar(pinned:true,expandedHeight:500.0,title:Text(this.text,style:TextStyle(fontSize:25.0)),flexibleSpace:FlexibleSpaceBar(background:Image.asset(this.imagepath,fit:BoxFit.cover))),SliverFixedExtentList(itemExtent:500,delegate:SliverChildListDelegate([Material(color:Colors.white30,child: returnMenu(this.url))]))]);}}class returnMenu extends StatelessWidget {String url;returnMenu(this.url);@override Widget build(BuildContext context){return Container(child:Center(child:FutureBuilder(future:DefaultAssetBundle.of(context).loadString(this.url),builder:(context,snapshot){var myData=json.decode(snapshot.data.toString());return ListView.builder(itemBuilder:(BuildContext context,int index) {return Card(child:Container(child:Column(children:<Widget>[Padding(padding:EdgeInsets.all(15)),GradientButton(child:FittedBox(child:Text(myData[index]['name'],style:TextStyle(fontSize:30.0,fontFamily:"Lobster_Two"))),gradient:Gradients.backToFuture,callback:(){String name=myData[index]['name'];String servings=myData[index]['servings'];String totalTime=myData[index]['totalTime'];String ingredients=myData[index]['ingredients'];String procedure=myData[index]['procedure'];Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>RecipeDetails(name,servings,totalTime,ingredients,procedure)));},increaseWidthBy:200.0,increaseHeightBy:20.0),Row(mainAxisSize:MainAxisSize.min,children:<Widget>[Icon(Icons.access_alarm),MaterialButton(child:Text(myData[index]['totalTime']))])])));},itemCount:myData==null?0:myData.length);})));}}