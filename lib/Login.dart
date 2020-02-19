import 'package:flutter/material.dart';
import 'Signup.dart';
import 'HomePage.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name,password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Restaraunt App'),
        backgroundColor: Colors.amber,
        
      ),
      
      body: Center(
        
              child: SingleChildScrollView(
          child: Form(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(15.0),),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: TextFormField(
                        // controller: ,

                      validator: (input){
                        if (input.isEmpty){
                          return 'Enter username';
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'Username'
                      ),
                      onSaved: (input)=>password=input,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.lock),
                    title: TextFormField(
                      validator: (input){
                        if (input.isEmpty){
                          return 'Enter password';
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                      onSaved: (input)=>name=input,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  ButtonTheme(
                    height: 40.0,
                    minWidth: 200.0,
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                      },//enter method here for next page
                      color: Colors.orange,
                      child: Text(
                        'Login Securely',
                        style: TextStyle(
                          color: Colors.black,

                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                ButtonTheme(
                  height: 40.0,
                  minWidth: 200.0,
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                    },
                    color: Colors.orange,
                    child: Text(
                      'Signup',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10.0))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  
}