import 'package:flutter/material.dart';

void main(){
  runApp(const PlayerApp());
}

class PlayerApp extends StatefulWidget{
  const PlayerApp({super.key});

  @override  
  State createState() => _PlayerAppState();
}

class _PlayerAppState extends State{

  int count=0;
  List playerList = [
    "https://cdn.britannica.com/25/222725-050-170F622A/Indian-cricketer-Mahendra-Singh-Dhoni-2011.jpg",

    "https://www.hindustantimes.com/static-content/1y/cricket-logos/players/virat-kohli.png",

    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQdOhS0Jtpsi4nR9sLpejkFT2mX1zv2aNM1w&s",

    "https://cdn.britannica.com/52/252752-050-2E120356/Cricketer-Rohit-Sharma-2023.jpg",

    "https://images-cricketcom.imgix.net/news-1692799700748?auto=compress,format&dpr=1&w=976&h400&q=80",
  ];
  @override  
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: const Text("Players"),
          backgroundColor: Colors.amber,
          centerTitle: true, 
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(playerList[count]),
              
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: (){
            setState(() {
              if(count<playerList.length-1){
                count++;
              }else{
                count=0;
              }
            });
          },
          child: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}