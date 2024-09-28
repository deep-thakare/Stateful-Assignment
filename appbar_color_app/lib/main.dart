import "package:flutter/material.dart";

void main(){
  runApp(const AppBarToggle());
}

class AppBarToggle extends StatefulWidget{
  const AppBarToggle({super.key});
  @override
  State createState() => _AppBarToggleState();
}

class _AppBarToggleState extends State{

  bool colorChange=true;

  @override   
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title:const Text("AppBar Toggle"),
          backgroundColor: colorChange? Colors.blue:Colors.amber,
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: (){
            if(colorChange){
              colorChange=false;
            }else{
              colorChange=true;
            }
            setState(() {
              
            });
          },
          child:const Text("Toggle"),
        ),
      ),
    );
  }
}