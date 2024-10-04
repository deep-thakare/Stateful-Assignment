import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  TextEditingController nameController = TextEditingController();

  String? myName;
  @override  
  Widget build(BuildContext constext){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          title: const Text(
            "TextFieldDemo",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: Colors.white
            ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Enter your Name",
                  hintStyle: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                  border: const OutlineInputBorder()
                ),
                onChanged: (val) {
                  print("Value: $val");
                },
                onSubmitted: (value) {
                  print("value Submitted: $value");
                },
              ),
            ),

            const SizedBox(height: 30,),

            GestureDetector(
              onTap: (){
                setState(() {
                  myName = nameController.text;  
                  nameController.clear();
                });
                
              },
              
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 8
                  ),
                  child: Text(
                    "Add Data",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.deepPurple,
                  width: 2
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Text(
                  "My Name : $myName",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}