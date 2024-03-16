// ignore_for_file: non_constant_identifier_names, sized_box_for_whitespace, file_names

import 'package:flutter/material.dart';
    

  class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  
  void reset ()
  {
    setState(() {
       teamAPoint = 0;
       teamBPoint = 0;
    });
  }
//////////////////////////////////////////////////////////////
  int teamAPoint = 0;
  void addOnePoint_A ()
  {
    setState(() {
      teamAPoint++;     
    });
  }
  void addTwoPoint_A ()
  {
    setState(() {
      teamAPoint+=2;     
    });
  }
  void addThreePoint_A ()
  {
    setState(() {
      teamAPoint+=3;     
    });
  }
//////////////////////////////////////////////////////////////
  int teamBPoint = 0;
  void addOnePoint_B ()
  {
    setState(() {
      teamBPoint++;     
    });
  }
  void addTwoPoint_B ()
  {
    setState(() {
      teamBPoint+=2;     
    });
  }
  void addThreePoint_B ()
  {
    setState(() {
      teamBPoint+=3;     
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text('Points Counter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  height: 380,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('Team A',
                      style: TextStyle(
                        fontSize: 32,
                       ),
                      ),
                      Text('$teamAPoint',
                      style: const TextStyle(
                        fontSize: 100,
                       ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom (
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.orange,
                          elevation: 0,
                          minimumSize: const Size(110, 40)
                          
                        ),
                        onPressed: addOnePoint_A, 
                        child: const Text('Add 1 Point'),
                        ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom (
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.orange,
                          elevation: 0,
                          minimumSize: const Size(110, 40)
                          
                        ),
                        onPressed: addTwoPoint_A, 
                        child: const Text('Add 2 Point'),
                        ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom (
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.orange,
                          elevation: 0,
                          minimumSize: const Size(110, 40)
                          
                        ),
                        onPressed: addThreePoint_A, 
                        child: const Text('Add 3 Point'),
                        ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 470,
                child: const VerticalDivider(
                  color: Color(0xFF9E9E9E),
                  thickness: 1.5,
                  indent: 30,
                  endIndent: 10,
                ),
              ),
              Expanded(
                child: Container(
                  height: 380,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('Team B',
                      style: TextStyle(
                        fontSize: 32,
                       ),
                      ),
                      Text('$teamBPoint',
                      style: const TextStyle(
                        fontSize: 100,
                       ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom (
                          foregroundColor: Colors.black, 
                          backgroundColor: Colors.orange,
                          elevation: 0,
                          minimumSize: const Size(110, 40)
                          
                        ),
                        onPressed: addOnePoint_B, 
                        child: const Text('Add 1 Point'),
                        ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom (
                          foregroundColor: Colors.black, 
                          backgroundColor: Colors.orange,
                          elevation: 0,
                          minimumSize: const Size(110, 40)
                          
                        ),
                        onPressed: addTwoPoint_B, 
                        child: const Text('Add 2 Point'),
                        ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom (
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.orange,
                          elevation: 0,
                          minimumSize: const Size(110, 40)
                          
                        ),
                        onPressed: addThreePoint_B, 
                        child: const Text('Add 3 Point'),
                        ),
                    ],
                  ),
                ),
              ),
            
            ],
              ),
            ElevatedButton(
                      style: ElevatedButton.styleFrom (
                        foregroundColor: Colors.black,
                          backgroundColor: Colors.orange,
                        elevation: 0,
                        minimumSize: const Size(150, 40)
                        
                      ),
                      onPressed: reset, 
                      child: const Text('Reset',),
                      ),
                    
          ],
        ),
      ),
    );
  }
}