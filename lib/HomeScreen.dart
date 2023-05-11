import 'package:flutter/material.dart';
import 'dart:math';
class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


String currentImage = 'assets/images/dice1.png';
String secondDice = 'assets/images/dice1.png';

void changeImage() {
  
 int randomNumber = Random().nextInt(6) +1;
  
 
    setState(() {
      if(currentImage=='assets/images/dice1.png'){

  
        currentImage= 'assets/images/dice$randomNumber.png';
      }
        else
        {
          currentImage= 'assets/images/dice$randomNumber.png';
        }

 
    });
  }

void changeSecond() {
 int randomNumber = Random().nextInt(6) +1;
  

    setState(() {
      if(secondDice=='assets/images/dice1.png'){

      
        secondDice= 'assets/images/dice$randomNumber.png';
      }
      else{
         secondDice= 'assets/images/dice$randomNumber.png';
      }
    });
  }


  @override
  Widget build(BuildContext context) {
   return Scaffold(
  backgroundColor: Colors.black,
  appBar: AppBar(
    backgroundColor: Colors.red.withOpacity(0.8),
    centerTitle: true,
    title: Text("Roll the Dice"),
  ),


  body: 
  
  Center(
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        
          children: [
            
            
              Expanded(
                
                child: GestureDetector
                (
                  onTap: () {
                    changeImage();
                
                },
                child: Image.asset(currentImage,scale: 3,),
                ),
              ),
              
              SizedBox(width: 10,),
              
             
                
                Expanded(
                  
                  child: GestureDetector(
                    onTap: (){
                     
                      changeSecond();
                      
                    },
                    child: Image.asset(secondDice,scale: 3,)),
                  ),
                 
        ],),
    ),
  ),
);




  }
}