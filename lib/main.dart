import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Theme App',
    

      home:Scaffold(
        appBar: AppBar(
          title: const Text("Theme App"),
          actions: [Switch(value: false, onChanged: (newValue){})],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Image.asset("images/avatar.png",width: 200,height: 200,),
                const SizedBox(height: 30),
                const Text("Opudu Tamarapreye"),
                const SizedBox(height: 30),
                const TextField(decoration: InputDecoration(    
                  hintText: "First input text",
                
                ),),
                const SizedBox(height: 30),
                ElevatedButton(onPressed: (){}, child: const Text("just click"))
              ],
            ),

          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){},child:const Icon(Icons.add),),
      )
    );
  }
}

