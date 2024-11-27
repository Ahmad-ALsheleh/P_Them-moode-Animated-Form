import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool chaned =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Contenar'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap:(){
              setState(() {
                chaned =! chaned;
              });
            },
            child:
            AnimatedContainer(duration:
             Duration(milliseconds: 500,),height: 300, width:500 ,
              color: chaned? Colors.green.shade500: Colors.green.shade200,
              alignment: Alignment.center,
              child: Text(chaned?'رجوع للون الاول ':"تغيير اللون"),
              ),
          ),
          //if(chaned)

          AnimatedContainer(
            curve: Curves.linear,
            duration: Duration(
              milliseconds: 300,
              
            ),
          alignment: Alignment.center,
           height: chaned?0:150,
           width: chaned?0:300,

            color: Colors.green,
            child: Text('New Contenar'),
          )
        ],
      ),
    );
  }
}