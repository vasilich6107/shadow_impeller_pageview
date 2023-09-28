import 'package:flutter/material.dart';
import 'package:shadow_impeller_pageview/carousel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Material(
        child: ColoredBox(
          color: Colors.white,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Placeholder(),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  bottomLeft: Radius.circular(40),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x4C000000),
                                    blurRadius: 40,
                                    offset: Offset(-12, 0),
                                  ),
                                  BoxShadow(
                                    color: Color(0x26000000),
                                    blurRadius: 20,
                                    offset: Offset(-6, 0),
                                  ),
                                ],
                              ),
                              child: Image(image: AssetImage('assets/bg.png')),
                            ),
                          ),
                          Carousel(),
                        ],
                      ),
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


