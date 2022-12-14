import 'package:calculator/buttoms.dart';
import 'package:calculator/colors.dart';
import 'package:calculator/style.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({ Key? key }) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
   String result = '0' ;
   String equation = '';
   String expression ="";

   int col = 0xFFDDC3A5;
   int col1 = 0xFFE0A96D;

  void btnOnClick(String btnVal){
    print(btnVal);
    
    setState(() {
       if(btnVal == '='){
        expression = equation;
        expression = expression.replaceAll('X', '*');
        try {
          Parser p = new Parser();
          Expression exp = p.parse(expression);
          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        } catch(e){
          result = "Error";
        }
      } else {
        if (equation == "0"){
          equation = btnVal;
        } else {
          equation = equation + btnVal;
        }
      }
    });

  
    
   
    

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Flutter Calculator',
        style: rubik.copyWith(
          fontSize: 25
        ),
        ),
         ),
      backgroundColor: AppColors.back,
      body: Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            
             Row(
               mainAxisAlignment: MainAxisAlignment.end ,
               children: [
                 
                
                 Container(
                      child: 
                      Padding(padding: EdgeInsets.only(right: 12),
                      child: Text(
                        equation,
                      style: rubik.copyWith(
                        fontSize: 28,
                        color: AppColors.calculColor
                      ),),
                      ),
                      alignment: Alignment(1.0 , 1.0),
                    ),
                     IconButton(
              onPressed: (){
                setState(() {
                   equation = equation.substring(0,equation.length - 1);
        if(equation==''){
          equation = "0";
        }
                });
              }, 
              iconSize: 28,
              color: AppColors.result,
              icon: Icon(Icons.backspace)),
               ],
             ),
                Container(
                  child: 
                  Padding(padding: EdgeInsets.all(12),
                  child: Text(
                    result,
                  style: rubik.copyWith(
                    fontSize: 48,
                    color: AppColors.result
                  ),),
                  ),
                  alignment: Alignment(1.0 , 1.0),
                ),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
               CalculatorButton(
                 text: '9', 
                 fillColor: col,
                 textColor: 0xFF000000,
                 textSize: 24,
                 callback: btnOnClick,
                 width: 30,
                 ),
                 CalculatorButton(
                 text: '8', 
                 fillColor: col,
                 textColor: 0xFF000000,
                 textSize: 24,
                 callback: btnOnClick,
                 width: 30,
                 ),
                 CalculatorButton(
                 text: '7', 
                 fillColor: col,
                 textColor: 0xFF000000,
                 textSize: 24,
                 callback: btnOnClick,
                 width: 30,
                 ),
                 CalculatorButton(
                 text: '/', 
                 fillColor: col1,
                 textColor: 0xFF000000,
                 textSize: 24,
                 callback: btnOnClick,
                 width: 30,
                 ),
                 
              
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
               CalculatorButton(
                 text: '6', 
                 fillColor: col,
                 textColor: 0xFF000000,
                 textSize: 24,
                 callback: btnOnClick,
                 width: 30,
                 ),
                 CalculatorButton(
                 text: '5', 
                 fillColor: col,
                 textColor: 0xFF000000,
                 textSize: 24,
                 callback: btnOnClick,
                 width: 30,
                 ),
                 CalculatorButton(
                 text: '4', 
                 fillColor: col,
                 textColor: 0xFF000000,
                 textSize: 24,
                 callback: btnOnClick,
                 width: 30,
                 ),
                  CalculatorButton(
                 text: 'X', 
                 fillColor: col1,
                 textColor: 0xFF000000,
                 textSize: 24,
                 callback: btnOnClick,
                 width: 30,
                 ),
                  
              
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
               CalculatorButton(
                 text: '3', 
                 fillColor: col,
                 textColor: 0xFF000000,
                 textSize: 24,
                 callback: btnOnClick,
                 width: 30,
                 ),
                 CalculatorButton(
                 text: '2', 
                 fillColor: col,
                 textColor: 0xFF000000,
                 textSize: 24,
                 callback: btnOnClick,
                 width: 30,
                 ),
                 CalculatorButton(
                 text: '1', 
                 fillColor: col,
                 textColor: 0xFF000000,
                 textSize: 24,
                 callback: btnOnClick,
                 width: 30,
                 ),
                 CalculatorButton(
                 text: '-', 
                 fillColor: col1,
                 textColor: 0xFF000000,
                 textSize: 24,
                 callback: btnOnClick,
                 width: 30,
                 ),
                
              
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                 CalculatorButton(
                 text: '0', 
                 fillColor: col,
                 textColor: 0xFF000000,
                 textSize: 24,
                 callback: btnOnClick,
                 width: 30,
                 ),
                 CalculatorButton(
                 text: '.', 
                 fillColor: col1,
                 textColor: 0xFF000000,
                 textSize: 24,
                 callback: btnOnClick,
                 width: 30,
                 ),
                
                 CalculatorButton(
                 text: '=', 
                 fillColor: col1,
                 textColor: 0xFF000000,
                 textSize: 24,
                 callback: btnOnClick,
                 width: 30,
                 ),
              
               CalculatorButton(
                 text: '+', 
                 fillColor: col1,
                 textColor: 0xFF000000,
                 textSize: 24,
                 callback: btnOnClick,
                 width: 30,
                 ),  
                  
                
                 
              ],
            ),
           
            
          ],
        ) ),
      
    );
  }
}