import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Stack  va  Row'),
        ),
        body: Center(
          child: Stack(
            children: <Widget>[
              // Stack orqali ustma-ust joylashtirilgan konteynerlar, biroz yuqorida
              Align(
                alignment: Alignment(
                    0.0, -0.3), // Markazda biroz yuqorida joylashtirish
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.red.withOpacity(0.8),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.green.withOpacity(0.6),
                    ),
                  ],
                ),
              ),
              // Row orqali yonma-yon joylashtirilgan konteynerlar, pastroqda
              Align(
                alignment: Alignment(
                    0.0, 0.5), // Markazda biroz pastroqda joylashtirish
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 10), // Oradagi bo'sh joy
                    Container(
                      width: 60,
                      height: 60,
                      color: Colors.purple,
                    ),
                    SizedBox(width: 10), // Oradagi bo'sh joy
                    Container(
                      width: 60,
                      height: 60,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
