import 'package:flutter/material.dart';
import 'Extra/HexColor.dart';
import 'Extra/allReusedCode.dart';


class loading extends StatefulWidget {
  const loading({Key? key}) : super(key: key);

  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/login');
    });
    {
    return Container(
      color: HexColor.fromHex('Caf0f8'),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:
            [
              Photo('images/logo.png', 200, 200,),
              SizedBox(
                height: 70, width: 70,
                child: CircularProgressIndicator(
                  strokeWidth: 5,
                  color: HexColor.fromHex('03045e'),
                ),
              )



            ]

        ),
      )

    );
  }
}}
