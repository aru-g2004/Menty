import 'package:flutter/material.dart';
import 'package:menty/Extra/allReusedCode.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'Extra/HexColor.dart';

class free extends StatefulWidget {
  const free({Key? key}) : super(key: key);

  @override
  _freeState createState() => _freeState();
}
/*
UPDATE, THERE WILL BE NO SEARCH ENGINE ETC
- We will basically have a firebase firestore database which
 will determine from a quiz what disroder they most likely have
 from their symptoms
- according to their "diagnosis", their homepage will be specialized for the
disorder closest to those symptoms, trying to give quotes, meditations, excersices
for the specific case they have.
 */

class _freeState extends State<free> {
  @override
  Widget build(BuildContext context) {
    Excersice current = new Excersice();

    // TO DO, MAKE MENTY A ICON!!

    return Container(
      color: HexColor.fromHex('Caf0f8'),
      child: ListView(
        children: [
          SizedBox(
            height: 25,
          ),
          Row(children: [
            SizedBox(
              width: 40,
            ),
            Heading('Leah\'s space', "03045e"),
            SizedBox(
              width: 80,
            ),
            Photo('images/logowotext.png', 60, 60,)
          ]),
          SizedBox(
            height: 15,
          ),
          Divider(
           thickness: 1,
            color:  Colors.grey.withOpacity(0.5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            SpaceButtons(Icons.check_box_outlined, 'To-Do', 'Ade8f4', '03045e'
            , context, '/login' ),
            SpaceButtons(Icons.alarm_on_outlined, 'Dosage', '90e0ef', '03045e'
                , context, '/login' ),
            SpaceButtons(Icons.book_outlined, 'Journal', '48cae4', '03045e', context, '/login' ),
          ]),
          Divider(
            thickness: 1,
            color:  Colors.grey.withOpacity(0.5),
          ),
          SizedBox(height: 20,),
          Row(children: [
            SizedBox(
              width: 25,
            ),
            Heading('DAILY TIP', "03045e"),
            //    Logo(),
          ]),
          SizedBox(
            height: 25,
          ),
          Center(child: Text('If you feel anger rush over you count to 10', style: style(18, '0077b6'),)),
          SizedBox(
            height: 15,
          ),
          Divider(
            thickness: 1,
            color:  Colors.grey.withOpacity(0.5),
          ),
          SizedBox(
            height: 15,
          ),
          Row(children: [
            SizedBox(
              width: 25,
            ),
            Heading('DAILY QUOTE', "03045e"),
            //    Logo(),
          ]),
          SizedBox(
            height: 25,
          ),
          Center(child: Text('\'You have a purpose!\'', style: style(18, '0077b6'),)),
          SizedBox(
            height: 15,
          ),
          Divider(
            thickness: 1,
            color:  Colors.grey.withOpacity(0.5),
          ),
          SizedBox(
            height: 15,
          ),
          Row(children: [
            SizedBox(
              width: 25,
            ),
            Heading('MEDITATIONS FOR YOU', "03045e"),
          ]),
          SizedBox(
            height: 25,
          ),
      Row(
        children: [
          current.Ex('Guided Meditation', ['10 min', '20 min', '30 min', '40 min'],
              '03045e', '03045e', 'Caf0f8', 15),

          current.Ex('Sleep Sounds', ['10 min', '20 min', '30 min', '40 min'],
              '03045e', '03045e', 'Caf0f8', 15),

        ],
      )
          //ADD CAROUSELL SLIDER HERE FOR MEDITATIONS

        ]
      ),
    );
  }
}
