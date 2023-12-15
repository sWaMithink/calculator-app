import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Basic Calculation'),
      ),
      body:Container(
        color: Colors.blue.shade100,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: no1Controller,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: no2Controller,
              ),
              Padding(
                padding: const EdgeInsets.all(21.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());
                      var sum = no1+no2;
                      result = "The Sum of $no1 and $no2 is $sum";
                      setState(() {

                      });
                    }, child: Text('ADD')),
                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());
                      var diff = no1-no2;
                      result = "The Difference between $no1 and $no2 is $diff";
                      setState(() {

                      });
                    }, child: Text('SUBB')),
                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());
                      var mult = no1*no2;
                      result = "The multiplication between $no1 and $no2 is ${mult.toStringAsFixed(2)}";
                      setState(() {

                      });
                    }, child: Text('MULT')),
                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());
                      var div = no1/no2;
                      result = "The Division between $no1 and $no2 is ${div.toStringAsFixed(2)}";
                      setState(() {

                      });
                    }, child: Text('DIV')),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(21),
                child: Text(result,style: TextStyle(fontSize: 25,color: Colors.grey),),),
            ],
            
          ),
        ),

      ),
    );
  }
}
