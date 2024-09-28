import 'package:flutter/material.dart';

void main() {
  runApp(const ContainerToggle());
}

class ContainerToggle extends StatefulWidget{
  const ContainerToggle({super.key});

  @override  
  State createState() => _ContainerToggleState();
}

class _ContainerToggleState extends State{
  bool colorChange=true;
  
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title :const Text("Container Toggle"),
          backgroundColor:Colors.blue,
          centerTitle: true,
        ),
        body:Center(
          child: Container(
            height: 150,
            width: 150,
            color: colorChange? Colors.red:Colors.black,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: (){
            setState(() {
              if(colorChange){
                colorChange=false;
              }else{
                colorChange=true;
              }
            });
          },
          child: const Text("Toggle"),
        ),
      ),
    );  
  }
}

