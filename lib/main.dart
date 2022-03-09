import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';



void main() {
  runApp(
        MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.deepOrange,
          appBar:AppBar(
            title:  Text('FooDice',style: TextStyle(fontFamily: 'Pacifico',fontSize: 40.0)),
            backgroundColor: Colors.deepOrangeAccent,
          ),
          body: const FooDice(),
        ),
      )
  );
}
class FooDice extends StatefulWidget {
  const FooDice({Key? key}) : super(key: key);

  @override
  State<FooDice> createState() => _FooDiceState();

}

class _FooDiceState extends State<FooDice> {

  int foodice=1;
  int drinkdice=1;

  void foodicechange()
  {
    setState(() {
      foodice=Random().nextInt(9)+1;
      drinkdice=Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Still Confused?",style: TextStyle(fontFamily: 'Pacifico',fontSize: 30.0,color: Colors.white),),
        SizedBox(
          height: 20.0,
        ),
        Text("Tap Here",style: GoogleFonts.yellowtail(textStyle: TextStyle(fontSize: 40.0,letterSpacing: 1,color: Colors.white))),
        SizedBox(
          height: 20.0,
        ),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children:  [
              Expanded(child: TextButton(
                onPressed:(){
                  foodicechange();
                },
                child:Image.asset('images/food/food$foodice.png'),
              ),
              ),

              Expanded(child: TextButton(
                onPressed:(){
                  foodicechange();
                },
                child:Image.asset('images/drink/drink$drinkdice.png'),
              ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
