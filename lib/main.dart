import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
          backgroundColor: Colors.amber,
          body: SafeArea(
            child: Center(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 80.0,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                      'https://i2.wp.com/blog.tripcetera.com/id/wp-content/uploads/2020/10/Danau-Toba-edited.jpg'
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                      'Nickname',
                      style: TextStyle(
                       fontSize: 24,
                       fontWeight: FontWeight.bold,
                       color: Colors.red,
                  ),
                  ),
                 Card(
                   color: Colors.white,
                   margin: EdgeInsets.all(8.0),
                   child: ListTile(
                     leading: Icon(Icons.mail, color: Colors.blueGrey,),
                     title: Text(
                         'abcd@gmail.com',
                       style: TextStyle(
                         fontSize: 20,

                         color: Colors.green.shade700
                       ),
                     ),
                   ),
                 ),
                  ElevatedButton.icon(
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(AssetSource('sound.mp3'));
                      },
                      icon:Icon(Icons.radio_button_checked),
                      label: Text(
                        'Click Me!'
                      )
                  ),
                      ],
                    ),
                  )

            )
          ),
    );
  }
}
