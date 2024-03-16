import 'package:flutter/material.dart';
import 'PointsCounter.dart';

void main()
{
  runApp(const PointCounter());
}

class PointCounter extends StatelessWidget {
  const PointCounter({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PointsCounter(),
    );
  }
}