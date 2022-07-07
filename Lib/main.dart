//main page
import 'package:flutter/material.dart';
import 'package:menty/paid.dart';
import 'package:menty/quiz.dart';
import 'choice.dart';
import 'free.dart';
import 'loading.dart';
import 'login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 // await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/choice',
    routes: {
      '/loading': (context) => loading(),
      '/login':(context) => login(),
      '/choice' :(context) => choice(),
      '/free': (context) => free(),
      '/quiz': (context) => quiz(),
      '/paid': (context) => paid(),
      // PAID => makes them login => book a 15 min free consultation with proffesional => decide whether to buy yearly membership or pay session by session
      // members get to enjoy quick access to proffesional advice/chat
      // get a personalized goals and plan
      // FREE => takes them to a questionnare => pages woth advice
    },
  ));
}