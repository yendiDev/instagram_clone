import 'package:flutter/material.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  //controller for textfields
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  //create variables to receive data
  String username;
  String password;

  void validateLogin(BuildContext context){

    username = _usernameController.text.trim();
    password = _passwordController.text.trim();

    setState(() {

      if(username == 'killer' && password == '1234'){
        Navigator.pushReplacementNamed(context, '/home');

      } else {
      }

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topLeft, colors: <Color>[
          Colors.red,
          Colors.orange,
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 100.0,
                    ),
                    Text(
                      "Instagramy",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),

                    SizedBox(height: 2.0,),

                    Text(
                      'Connect with the rest of the world',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white
                      ),
                    )
                  ],
                ),
              ),
            ),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: <Widget>[

                          Container(
                            child: Column(
                              children: <Widget>[

                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[

                                        Text("Login", style: TextStyle(
                                          fontSize: 40.0,
                                          fontWeight: FontWeight.bold
                                        ),),

                                        SizedBox(height: 10,),

                                        TextField(
                                          controller: _usernameController,
                                          decoration: InputDecoration(
                                            hintText: 'enter username',
                                            labelText: 'username',
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10))
                                            )

                                          ),
                                        ),

                                        SizedBox(height: 10,),


                                        TextField(
                                          controller: _passwordController,
                                          obscureText: true,
                                          decoration: InputDecoration(
                                              hintText: 'enter password',
                                              labelText: 'password',
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.all(Radius.circular(10))
                                              )

                                          ),
                                        ),

                                        SizedBox(height: 10,),

                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text("Forgot password?", style: TextStyle(
                                            fontSize: 15.0,
                                            fontStyle: FontStyle.italic
                                          ),),
                                        ),

                                        SizedBox(height: 20.0,),

                                        Material(
                                          color: Colors.white.withOpacity(0.0),
                                          child: InkWell(
                                            onTap: (){
                                              validateLogin(context);
                                            },
                                            child: Container(
                                              height: 50.0,
                                              width: 150.0,
                                              child: Center(
                                                child: Text("Login", style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold
                                                ),),
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.deepOrange,
                                                  borderRadius: BorderRadius.circular(20.0)
                                              ),
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                )

                              ],
                            ),
                          )

                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
