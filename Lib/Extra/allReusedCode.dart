import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group_button/group_button.dart';
import 'HexColor.dart';




Widget Photo(String pic, double w, double h)
{
  return
      Image.asset(pic, width: w, height: h,);

}

Widget Button(String text, IconData icon, String Bcolor, String Tcolor, BuildContext bc, String nav)
{
return
    FlatButton(
      onPressed: () {
        Navigator.pushNamed(bc, nav);
      },
        child: Card(
          color: HexColor.fromHex(Tcolor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Card(
            color: HexColor.fromHex(Bcolor),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child:
            Center(
              child:
              IconWithText(icon, text, Tcolor),
            ),
          ),
        ),

    );
}


Widget SubmitButton(String text, String Bcolor, String Tcolor, BuildContext bc, String nav)
{
  return
    FlatButton(
      onPressed: () {
        Navigator.pushNamed(bc, nav);
      },
      child: Card(
        color: HexColor.fromHex(Tcolor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Card(
          color: HexColor.fromHex(Bcolor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child:
          Center(
            child:
                Text(text ,
                  style: GoogleFonts.rubik(
                    fontSize: 15,
                    color: HexColor.fromHex(Tcolor),
                    decoration: TextDecoration.none,
                  ),),
          ),
        ),
      ),

    );
}



Row IconWithText(IconData icon, String text, String Tcolor)
{
  return Row(
    children: [
      SizedBox(width: 10,),
      Icon(icon, size: 30,),
      SizedBox(width: 10,),
      Text(text ,
          style: GoogleFonts.rubik(
          fontSize: 15,
          color: HexColor.fromHex(Tcolor),
          decoration: TextDecoration.none,
        ),),
    ],
  );
}

SizedBox SpaceButtons(IconData icon, String text, String MBcolor, String Tcolor
    , BuildContext c, String n )
{
  return   SizedBox(
    height: 110,
    width: 110,
    child: MaterialButton(
        color: HexColor.fromHex(MBcolor) ,
        child: Row(
          children: [
            Icon(icon, size: 20,),
            SizedBox(width: 5,),
            Text(text ,
              style: GoogleFonts.rubik(
                color: HexColor.fromHex(Tcolor),
                decoration: TextDecoration.none,
              ),)
          ],),
        shape: CircleBorder(),
        onPressed: () {
          Navigator.pushNamed(c, n);
        }),
  );
}



Text Heading(String text, String Tcolor)
{
  return
      Text(text ,
        style: GoogleFonts.rubik(
          fontSize: 25,
          color: HexColor.fromHex(Tcolor),
          decoration: TextDecoration.none,
        ));
}


class Excersice{

  List<String> chosen = [];
  int i = 0;

  Widget Ex(
      String question, List<String> choices, String Mcolor, String Tcolor, String Bcolor, double size
      )
  {
    return SizedBox(
      height: 275,
      width: 195,
      child:  Card(
          color: HexColor.fromHex(Tcolor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Card(
            color: HexColor.fromHex(Bcolor),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child:

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(question , style: style(size, Mcolor)

                      ),
                      TextButton(
                          onPressed: (){
                            chosen[i] = choices[0];
                            i++;
                          },
                          child: Text(choices[0], style: style(size, Tcolor))),
                      TextButton(
                          onPressed: (){
                            chosen[i] = choices[1];
                            i++;
                          },
                          child:  Text(choices[1], style: style(size, Tcolor))),
                      TextButton(
                          onPressed: (){
                            chosen[i] = choices[2];
                            i++;

                          },
                          child:  Text(choices[2], style: style(size, Tcolor))),
                      TextButton(
                          onPressed: (){
                            chosen[i] = choices[3];
                            i++;
                          },
                          child:  Text(choices[3], style: style(size, Tcolor))),
                    ],
                  ),
                )
            ),
          ),
    );

  }

}

TextStyle style(double size, String Tcolor)
{
  return GoogleFonts.rubik(
    fontSize: size,
    color: HexColor.fromHex(Tcolor),
    decoration: TextDecoration.none,
  );


}

class Quiz{

  String BGcolor = "";
  String Bcolor = "";
  String Tcolor = "";


  Quiz(String container, String button, String text ){
    BGcolor = container;
    Bcolor = button;
    Tcolor = text;
  }

  Padding question(String q)
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: HexColor.fromHex(BGcolor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        SizedBox(height: 25,),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(q, style: style(18, Tcolor),),
        ),
            SizedBox(height: 10,),
            GroupButton(
             options: GroupButtonOptions(
                selectedTextStyle: GoogleFonts.rubik(
                  color: HexColor.fromHex(Tcolor),
                  decoration: TextDecoration.none,
                ),
              selectedColor: HexColor.fromHex(BGcolor),
                unselectedColor: HexColor.fromHex(Bcolor),
                unselectedTextStyle: GoogleFonts.rubik(
                  color: HexColor.fromHex(Tcolor),
                  decoration: TextDecoration.none,
                ),
                borderRadius: BorderRadius.circular(15),
                spacing: 10,
                runSpacing: 10,
                groupingType: GroupingType.wrap,
                direction: Axis.horizontal,
                buttonHeight: 30,
                buttonWidth: 80,
                mainGroupAlignment: MainGroupAlignment.start,
                crossGroupAlignment: CrossGroupAlignment.start,
                groupRunAlignment: GroupRunAlignment.start,
                textAlign: TextAlign.center,
                textPadding: EdgeInsets.zero,
                alignment: Alignment.center,
                elevation: 5,
              ),
              isRadio: true,
              buttons: ["never", "sometimes", "very often", "always"],
            ),
            SizedBox(height: 25,),
          ],
        ),
      ),
    );
  }


}


