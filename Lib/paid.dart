
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:menty/Extra/HexColor.dart';
import 'package:menty/Extra/allReusedCode.dart';


class paid extends StatefulWidget {
  const paid({Key? key}) : super(key: key);

  @override
  _paidState createState() => _paidState();
}

class _paidState extends State<paid> {
  @override
  Widget build(BuildContext context) {
    return Card(
child:
Container(
  color: HexColor.fromHex('90e0ef'),
  child:
  Column(
    children: [
SizedBox(
  height:100,
),
      Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Heading('Schedule your meeting\nwith a Menty Professional', '03045e'),
        ),
      ),
  SizedBox(
    height:30,),
      Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('What is the meeting about?', style: style(18, '023e8a')),
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('It is a free 15 minute consultation\n which will help diagnose you!', style: style(12, '023e8a')),
        ),
      ),
      SizedBox(
        height:30,
      ),
  Padding(
    padding: const EdgeInsets.all(25.0),
      child: DateTimePicker(
        style: style(15, '023e8a'),
        type: DateTimePickerType.dateTimeSeparate,
        dateMask: 'd MMM, yyyy',
        initialValue: DateTime.now().toString(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
        icon: Icon(Icons.event),
        dateLabelText: 'Date',
        timeLabelText: "Hour",
        selectableDayPredicate: (date) {
          // Disable weekend days to select from the calendar
          if (date.weekday == 6 || date.weekday == 7) {
            return false;
          }

          return true;
        },
        onChanged: (val) => print(val),
        validator: (val) {
          print(val);
          return null;
        },
        onSaved: (val) => print(val),
      ),
    ),
      Center(
        child: SizedBox(
          height: 50,
          width: 120,
            child: SubmitButton('Submit' , '03045e', '90e0ef', context, '/login')),
      ),

      SizedBox(
        height:25,
      ),
      Photo('images/flower2.png', 175, 175)


    ],
  ),
),
    );
  }
}
