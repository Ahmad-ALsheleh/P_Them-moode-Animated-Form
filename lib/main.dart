import 'package:flutter/material.dart';
import 'package:session_19/Form.dart';
import 'package:session_19/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
bool darkMode=false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: darkMode ? ThemeData.dark() : ThemeData.light(),
      // ThemeData(
      
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: 
            //Home(),
            FormText(),
    
//         Scaffold(
//         appBar: AppBar(
//           title: Text('Dark & Light'),
//           backgroundColor: Colors.lightBlue,
//         ),
//         body: Center(
//         child: Container(
//     height: double.infinity,
//     width: double.infinity,
//     child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text('welcome in Room4',),
//         SizedBox(height:50 ,),
//         Switch(
//           value: darkMode,
//           onChanged: (value) {
//             setState(() {
//               darkMode = value;
//             });
//           },
//         ),
//         SizedBox(height:50 ,),
//         Text(darkMode?'this is dark moode':'this is light moode',style:TextStyle(color:darkMode?Colors.white:Colors.black, ) ,)
//       ],
//     ),
//   ),
// ),
// ),


    );
  }
}