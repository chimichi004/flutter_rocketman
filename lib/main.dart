// youtube link:  https://youtu.be/XfZG-SKYE3Y
// flame game-engine link:  https://pub.dev/packages/flame
/// If errors during run-time
/// input in terminal => "flutter channel stable" or "flutter downgrade"

import 'package:flutter/material.dart';

import 'screens/game_screens/screen_manager.dart';

void main() {
  runApp(screenManager.widget);
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Rocket Man",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Rocket Man'),
//         ),
//         body: ScreenManager(),
//       ),
//     );
//   }
// }
