import 'package:flutter/material.dart';

import '../Widgets/block.dart';

int n = 1;

class GameUI extends StatefulWidget {
  const GameUI({super.key});

  @override
  State<GameUI> createState() => _GameUIState();
}

class _GameUIState extends State<GameUI> {
  List<List> xo = [
    [(""), (""), ("")],
    [(""), (""), ("")],
    [(""), (""), ("")]
  ];

  var pressed = false;
  var pressed1 = false;
  var pressed2 = false;
  String xwin = "";
  String owin = "";
  String nowin = "";
  String empty = "";
  var score1 = 0;
  var score2 = 0;
  var disable = false;

  clr() {
    setState(() {
      for (var i = 0; i < 3; i++) {
        for (var j = 0; j < 3; j++) {
          xo[i][j] = "";
        }
      }
    });
  }

  draw() {
    if (n == 9) {
      setState(() {
        nowin = "TIE !!!";
        pressed = true;
        pressed2 = false;
        disable = true;
      });
    }
  }

  win() {
    setState(() {
      if (xo[0][0] == xo[0][1] && xo[0][1] == xo[0][2] && xo[0][0] != '') {
        disable = true;
        pressed = true;
        pressed2 = true;
        if (xo[0][0] == 'X') {
          xwin = "X IS WINNER !!";
          score1 = score1 + 1;
          pressed1 = true;
        }
        if (xo[0][0] == 'O') {
          owin = "O IS WINNER !!";
          score2 = score2 + 1;
          pressed1 = false;
        }
      } else if (xo[1][0] == xo[1][1] &&
          xo[1][1] == xo[1][2] &&
          xo[1][0] != '') {
        disable = true;
        pressed = true;
        pressed2 = true;
        if (xo[1][0] == 'X') {
          xwin = "X IS WINNER !!";
          score1 = score1 + 1;
          pressed1 = true;
        }
        if (xo[1][0] == 'O') {
          owin = "O IS WINNER !!";
          score2 = score2 + 1;
          pressed1 = false;
        }
      } else if (xo[2][0] == xo[2][1] &&
          xo[2][1] == xo[2][2] &&
          xo[2][0] != '') {
        disable = true;
        pressed = true;
        pressed2 = true;
        if (xo[2][0] == 'X') {
          xwin = "X IS WINNER !!";
          score1 = score1 + 1;
          pressed1 = true;
        }
        if (xo[2][0] == 'O') {
          owin = "O IS WINNER !!";
          score2 = score2 + 1;
          pressed1 = false;
        }
      } else if (xo[0][0] == xo[1][0] &&
          xo[1][0] == xo[2][0] &&
          xo[0][0] != '') {
        disable = true;
        pressed = true;
        pressed2 = true;
        if (xo[0][0] == 'X') {
          xwin = "X IS WINNER !!";
          score1 = score1 + 1;
          pressed1 = true;
        }
        if (xo[0][0] == 'O') {
          owin = "O IS WINNER !!";
          score2 = score2 + 1;
          pressed1 = false;
        }
      } else if (xo[0][1] == xo[1][1] &&
          xo[1][1] == xo[2][1] &&
          xo[0][1] != '') {
        disable = true;
        pressed = true;
        pressed2 = true;
        if (xo[0][1] == 'X') {
          xwin = "X IS WINNER !!";
          score1 = score1 + 1;
          pressed1 = true;
        }
        if (xo[0][1] == 'O') {
          owin = "O IS WINNER !!";
          score2 = score2 + 1;
          pressed1 = false;
        }
      } else if (xo[0][2] == xo[1][2] &&
          xo[1][2] == xo[2][2] &&
          xo[0][2] != '') {
        disable = true;
        pressed = true;
        pressed2 = true;
        if (xo[0][2] == 'X') {
          xwin = "X IS WINNER !!";
          score1 = score1 + 1;
          pressed1 = true;
        }
        if (xo[0][2] == 'O') {
          owin = "O IS WINNER !!";
          score2 = score2 + 1;
          pressed1 = false;
        }
      } else if (xo[0][0] == xo[1][1] &&
          xo[1][1] == xo[2][2] &&
          xo[0][0] != '') {
        disable = true;
        pressed = true;
        pressed2 = true;
        if (xo[0][0] == 'X') {
          xwin = "X IS WINNER !!";
          score1 = score1 + 1;
          pressed1 = true;
        }
        if (xo[0][0] == 'O') {
          owin = "O IS WINNER !!";
          score2 = score2 + 1;
          pressed1 = false;
        }
      } else if (xo[0][2] == xo[1][1] &&
          xo[1][1] == xo[2][0] &&
          xo[0][2] != '') {
        disable = true;
        pressed = true;
        pressed2 = true;
        if (xo[0][2] == 'X') {
          xwin = "X IS WINNER !!";
          score1 = score1 + 1;
          pressed1 = true;
        }
        if (xo[0][2] == 'O') {
          owin = "O IS WINNER !!";
          score2 = score2 + 1;
          pressed1 = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 60,
            width: 400,
            child: Center(
              child: pressed
                  ? pressed2
                      ? pressed1
                          ? Text(xwin,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 40))
                          : Text(owin,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 40))
                      : Text(nowin,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 40))
                  : const Text(''),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 50),
            height: 360,
            width: 360,
            child: Column(children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        if (!disable) {
                          setState(() {
                            if (xo[0][0] == "") {
                              xo[0][0] = n.isEven ? "O" : "X";
                            }
                          });

                          draw();
                          win();
                          n++;
                        }
                      },
                      child: Block(ele: xo[0][0])),
                  GestureDetector(
                      onTap: () {
                        if (!disable) {
                          setState(() {
                            if (xo[0][1] == "") {
                              xo[0][1] = n.isEven ? "O" : "X";
                            }
                          });

                          draw();
                          win();
                          n++;
                        }
                      },
                      child: Block(ele: xo[0][1])),
                  GestureDetector(
                      onTap: () {
                        if (!disable) {
                          setState(() {
                            if (xo[0][2] == "") {
                              xo[0][2] = n.isEven ? "O" : "X";
                            }
                          });

                          draw();
                          win();
                          n++;
                        }
                      },
                      child: Block(ele: xo[0][2])),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        if (!disable) {
                          setState(() {
                            if (xo[1][0] == "") {
                              xo[1][0] = n.isEven ? "O" : "X";
                            }
                          });

                          draw();
                          win();
                          n++;
                        }
                      },
                      child: Block(ele: xo[1][0])),
                  GestureDetector(
                      onTap: () {
                        if (!disable) {
                          setState(() {
                            if (xo[1][1] == "") {
                              xo[1][1] = n.isEven ? "O" : "X";
                            }
                          });

                          draw();
                          win();
                          n++;
                        }
                      },
                      child: Block(ele: xo[1][1])),
                  GestureDetector(
                      onTap: () {
                        if (!disable) {
                          setState(() {
                            if (xo[1][2] == "") {
                              xo[1][2] = n.isEven ? "O" : "X";
                            }
                          });

                          draw();
                          win();
                          n++;
                        }
                      },
                      child: Block(ele: xo[1][2])),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        if (!disable) {
                          setState(() {
                            if (xo[2][0] == "") {
                              xo[2][0] = n.isEven ? "O" : "X";
                            }
                          });

                          draw();
                          win();
                          n++;
                        }
                      },
                      child: Block(ele: xo[2][0])),
                  GestureDetector(
                      onTap: () {
                        if (!disable) {
                          setState(() {
                            if (xo[2][1] == "") {
                              xo[2][1] = n.isEven ? "O" : "X";
                            }
                          });

                          draw();
                          win();
                          n++;
                        }
                      },
                      child: Block(ele: xo[2][1])),
                  GestureDetector(
                      onTap: () {
                        if (!disable) {
                          setState(() {
                            if (xo[2][2] == "") {
                              xo[2][2] = n.isEven ? "O" : "X";
                            }
                          });

                          draw();
                          win();
                          n++;
                        }
                      },
                      child: Block(ele: xo[2][2])),
                ],
              )
            ]),
          ),
          pressed
              ? ElevatedButton(
                  onPressed: () {
                    setState(() {
                      clr();
                      n = 1;
                      pressed = false;
                      pressed1 = false;
                      pressed2 = false;
                      disable = false;
                    });
                  },
                  child: const SizedBox(
                    height: 50,
                    width: 120,
                    child: Center(
                      child: Text(
                        'Play Again',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                )
              : Container(height: 50),
          const Divider(
            color: Colors.black,
            thickness: 1.3,
            indent: 60,
            endIndent: 60,
            height: 20,
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'X',
                          style: TextStyle(fontSize: 25),
                        ),
                        const Divider(
                          color: Colors.black87,
                          indent: 60,
                          endIndent: 60,
                        ),
                        Text(
                          score1.toString(),
                          style:
                              const TextStyle(fontSize: 25, color: Colors.red),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('O', style: TextStyle(fontSize: 25)),
                        const Divider(
                          color: Colors.black87,
                          indent: 60,
                          endIndent: 60,
                        ),
                        Text(score2.toString(),
                            style: const TextStyle(
                                fontSize: 25, color: Colors.red))
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
