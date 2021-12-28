import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: CloudTest(),
      ),
    ),

  );
}

class CloudTest extends StatefulWidget {
  const CloudTest({Key? key}) : super(key: key);

  @override
  _CloudTestState createState() => _CloudTestState();
}

class _CloudTestState extends State<CloudTest> {
  int firstNumber = 1;
  int secondNumber = 9;
  int ballonOne = 9;
  int ballonTwo = 1;
  int ballonThree = 3;
  int ballonFour = 8;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/cloud.png"),
            fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 50,right:30,top:80,bottom:160),
              child: ElevatedButton(

                style: ElevatedButton.styleFrom(primary: Colors.white70, padding: EdgeInsets.only(top:20), ),
                  onPressed: (){

                  },


                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        Text("$firstNumber",style: TextStyle(
                          fontSize: 80,
                          fontFamily: "alloyInk" ,
                          color: Colors.blueAccent,
                        ),),
                        Text("+",style: TextStyle(
                        fontSize: 80,
                        fontFamily: "alloyInk",
                            color: Colors.redAccent,

                      ),),
                        Text("$secondNumber",style: TextStyle(
                        fontSize: 80,
                        fontFamily: "alloyInk",
                          color: Colors.yellowAccent,
                        ),),
                        Text("=",style: TextStyle(
                        fontSize: 80,
                        fontFamily: "alloyInk",
                          color: Colors.black,

                      ),),
                        Text("?",style: TextStyle(
                        fontSize: 80,
                        fontFamily: "alloyInk",
                          color: Colors.pinkAccent,

                      ),),
                    ],
                  ),

              ),

            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: (){
                      setState(() {
                        playSounds();

                         int addNumber =numberAddition(firstNumber, secondNumber);
                         if(addNumber == ballonOne)
                           {
                              correctAnswerSound();

                           }

                      });

                    },
                    child: Container(
                      padding: EdgeInsets.only(left:5,top:145,),
                      child: Image.asset("assets/images/$ballonOne.png",height:280,fit:BoxFit.fitHeight,),

                    ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {




                    });


                  },
                  child: Container(
                    padding: EdgeInsets.only(bottom:180,),
                    child: Image.asset("assets/images/$ballonTwo.png",height:200,fit:BoxFit.fitHeight,),
                  ),
                ),
                TextButton(
                  onPressed: (){


                  },
                  child: Container(
                    padding: EdgeInsets.only(bottom:70),
                    child: Image.asset("assets/images/$ballonThree.png",height:150,fit:BoxFit.fitHeight,),

                  ),
                ),
                TextButton(
                  onPressed: (){


                  },
                  child: Container(
                    padding: EdgeInsets.only(top:200,right:5),
                    child: Image.asset("assets/images/$ballonFour.png",height:230,fit:BoxFit.fitHeight,),

                  ),
                ),
              ],
            ),
          ],


        ),
      )
    );
  }
}

int numberAddition(int firstRandomNumber, int SecondRandomNumber)
{
   int result = firstRandomNumber + SecondRandomNumber;
   return result;
}

void playSounds()
{
  final audioCache = AudioCache(prefix: "assets/audios/");
  audioCache.play('one.mp3');
}

void correctAnswerSound()
{
  final audioCache = AudioCache(prefix: "assets/audios/");
  audioCache.play('correct_answer.mp3');
}
