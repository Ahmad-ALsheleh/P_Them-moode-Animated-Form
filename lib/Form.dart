import 'package:flutter/material.dart';

class FormText extends StatefulWidget {
   FormText({super.key});

  @override
  State<FormText> createState() => _FormTextState();
}

class _FormTextState extends State<FormText> {

bool vis =true;

final  _value= GlobalKey<FormState>();

final TextEditingController  _passwrd =TextEditingController() ; 

final TextEditingController  _email =TextEditingController() ; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
        backgroundColor: Colors.blueAccent,
      ),

      body: Center(
      child: Form(
      key: _value,
      child: Column(
      children: [
        Spacer(),
        TextFormField(
          controller:  _email,
          
          decoration:InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(),
            suffixIcon: Icon(Icons.email),
          

            // suffixIcon: IconButton(onPressed:
            //  (){
            //   setState(() {
            //   vis =! vis;
            //   });
            //   },
            //    icon: Icon(vis?Icons.visibility:Icons.visibility_off))
          ),
          keyboardType: TextInputType.emailAddress,
    
          validator: (value){
            if(value== null|| value.isEmpty){
              return "ادخل الإيميل";
            }
            if(!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)){
              return "ادخل الإيميل بشكل صحيح";
            }
            return null;
          }

        ),
        
        SizedBox(height: 20),

        TextFormField(
          obscureText: vis,
          controller:  _passwrd,
          
          decoration:InputDecoration(
            //suffixIcon: Icon:I,
            labelText: 'password',
            border: OutlineInputBorder(),
            //prefixIcon: Icon(Icons.lock),
            suffixIcon: IconButton(onPressed:
             (){
              setState(() {
              vis =! vis;
              });
              },
               icon: Icon(vis?Icons.visibility:Icons.visibility_off))
          ),
    
          validator: (value){
            if(value== null|| value.isEmpty){
              return "ادخل كلمة السر";
            }
            return null;
          }

        ),
        
        SizedBox(height: 20),

        ElevatedButton(onPressed: (){
        if(_value.currentState!.validate()){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('login')),);
        }
      },
       child: Text('login')),
        Spacer(),

      ],
    ),
  ),
),
    );
  }
}