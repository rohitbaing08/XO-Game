import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Block extends StatefulWidget {
  Block({super.key, required this.ele});

  String ele;

  @override
  State<Block> createState() => _BlockState();
}

class _BlockState extends State<Block> {
  

  @override
  Widget build(BuildContext context) {
    return 
         Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            border: Border.all(style: BorderStyle.solid, width: 2),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(widget.ele,
              style: const TextStyle(fontSize: 90),
              textAlign: TextAlign.center),
        );
  }
}
