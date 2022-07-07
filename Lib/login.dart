import 'package:flutter/material.dart';

import 'Extra/HexColor.dart';
import 'Extra/allReusedCode.dart';


class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor.fromHex('Ade8f4'),
      child: Column(
        children:
            [
              SizedBox(
                height: 100,
              ),
              Photo('images/logo.png', 200, 200,),
              SizedBox(
         height: 50,
       ),
              SizedBox(
                height: 350,
                width: 300,
                child: Card(
                  color: HexColor.fromHex('#90e0ef'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(

                    children: [
                      SizedBox(height: 40,),
                      Text('Create an account!', style: style(20, '03045e'),),

                      SizedBox(height: 20,),

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                          ),
                        ),
                      ),
                      Center(
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color:HexColor.fromHex('Ade8f4') ,
                          child: TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/choice');

                            },
                            child: Text("login", style: style(20, '03045e')),

                          ),
                        ),
                      )
                    ],
                  ),


                ),
              )



            ]),
    );
  }
}


