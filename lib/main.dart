import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:transformexample/transformcalss.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 235, 159, 46)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transform Application"),
        backgroundColor: const Color.fromARGB(255, 238, 110, 152),
      ),
      backgroundColor: const Color.fromARGB(255, 140, 231, 187),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            Transform.rotate(
              angle: pi / 4,
              child: Transformcalss(
                imageName: "assets/flower4.jpg",
              ),
            ),
            Transform.rotate(
              angle: pi / 4,
              child: Transformcalss(
                imageName: "assets/flower5.jpg",
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            Stack(
              children: [
                Transform(
                  transform: Matrix4.skewX(pi / 4),
                  child: Transformcalss(
                    imageName: "assets/flower5.jpg",
                  ),
                ),
                Transform(
                  transform: Matrix4.skewY(pi / 4),
                  child: Transformcalss(
                    imageName: "assets/flower4.jpg",
                  ),
                )
              ],
            ),

            Stack(
              children: [
                Transform(
                  transform: Matrix4.skewX(pi / 4),
                  child: Transformcalss(
                    imageName: "assets/flower4.jpg",
                  ),
                ),
                Transform(
                  transform: Matrix4.skewY(pi / 4),
                  child: Transformcalss(
                    imageName: "assets/flower5.jpg",
                  ),
                )
              ],
            ),
            SizedBox(
              width: 20,
            ),
            // Transform(
            //   transform: Matrix4.skewX(pi / 4),
            //   child: Transformcalss(
            //     imageName: "assets/flower5.jpg",
            //   ),
            // ),
            // Transform(
            //   transform: Matrix4.skewY(pi / 4),
            //   child: Transformcalss(
            //     imageName: "assets/flower4.jpg",
            //   ),
            // )
            // Transform.translate(
            //   offset: Offset(10, 40),
            //   child: Transformcalss(
            //     imageName: "assets/flower5.jpg",
            //   ),
            // ),
            // Transform.flip(
            //   flipY: true,
            //   child: Transformcalss(
            //     imageName: "assets/flower5.jpg",
            //   ),
            // ),
            // AnimatedContainer(
            //   // duration: Durations.long1,
            //   child: Transform.scale(
            //     scale: 1,
            //     child: Transformcalss(
            //       imageName: "assets/flower5.jpg",
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
