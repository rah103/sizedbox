import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:  richtext(),
      ),
      body:Column(
        children: [
           Text('simple Sizedbox to give width and height to its child:'),
          Center(
            child: SizedBox(
              width: 200,
              height: 30,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:WidgetStateProperty.all(Colors.purple),
                ),
                onPressed: (){
                },
                child:richtext(cl1:Colors.lightBlue,),
              )
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Square SizedBox which give demenion to its child:"),
          SizedBox.square(
            dimension: 110,
          child:ElevatedButton(
    style: ElevatedButton.styleFrom(
    backgroundColor:Colors.purple,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      )
    ),
    onPressed: (){
    },
    child:richtext(cl1:Colors.lightBlue,),
          ),
          ),

          SizedBox(
            height: 30,
          ),
          Text('Expand Sizedbox which is expand in container of fixed height and width:' ),
          Container(
            width: 300,
              height:200,
              child: SizedBox.expand(
                child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:Colors.purple,
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      )
                  ),
                  onPressed: (){
                  },
                  child:richtext(cl1:Colors.lightBlue,),
                ),
          ))
        ],
      ),

    );
  }
}
//richtext
class richtext extends StatelessWidget{
  final Color? cl1;
  richtext({this.cl1});
  @override
  Widget build(BuildContext context) {
  return Text.rich(
      TextSpan(text:  'Size',style:TextStyle(color:Colors.white),
          children: [
            TextSpan(text: 'box',style: TextStyle(color:cl1!=null?cl1:Colors.purple)),
            TextSpan(
              text: '.',style:TextStyle(color: Colors.amberAccent, fontWeight:FontWeight.w900),
            ),
          ])
  );

  }

}
