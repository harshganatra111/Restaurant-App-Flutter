import 'package:flutter/material.dart';
import 'package:myApp/HomePage.dart';
class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
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
                          return 'Enter name';
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'Name'
                      ),
                      //onSaved: (input)=>password=input,
                    ),
                  ),
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
                      //onSaved: (input)=>password=input,
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
                      //onSaved: (input)=>name=input,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: TextFormField(
                        // controller: ,

                      validator: (input){
                        if (input.isEmpty){
                          return 'Re-enter password';
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'Confirm Password'
                      ),
                      //onSaved: (input)=>password=input,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  
                ButtonTheme(
                  height: 40.0,
                  minWidth: 200.0,
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
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