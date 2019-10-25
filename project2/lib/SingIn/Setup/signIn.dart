import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../Homepage.dart'; 

class LogInPage extends StatefulWidget {
  LogInPage({Key key, this.title}) : super(key: key);

  

  final String title;

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
           TextFormField(
             validator: (input) {
               if(input.isEmpty) {
                return 'Please ty an email';
               }
             },
              onSaved: (input)=> _email = input,
              decoration: InputDecoration(
                labelText: 'Email'
              ),
           ),
           TextFormField(
             validator: (input) {
               if(input.length < 6) {
                return 'Your password need to be atleast 6 character';
               }
             },
              onSaved: (input)=> _password = input,
              decoration: InputDecoration(
                labelText: 'Password'
              ),
              obscureText: true,
           ),
           RaisedButton(
             onPressed: () {},
             child: Text('Sing in'),
           )
          ],
        ),
      ),
    );
  }
  Future<void>signIn() async{
  //todo validate field
  //todo login to firebase
  final formState= _formKey.currentState;
  if(formState.validate()){
      formState.save();
      try{FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password:  _password);
      Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage()));
      }catch(e){
        print(e.message);
      }      
    }
  }
}