import 'package:calculator/colors.dart';
import 'package:calculator/style.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callback;
  final double width ;
  const CalculatorButton({ 
    
    required this.text ,
    required this.fillColor,
    required this.textColor,
    required this.textSize,
    required this.callback ,
    required this.width
    
    }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
                  margin: EdgeInsets.all(7.0),
                  child: GestureDetector(
                    child: InkWell(
                            onTap: () => callback(text),
                            borderRadius: BorderRadius.circular(10.0),
                            child: Ink(
                              padding:  EdgeInsets.symmetric(horizontal: width , vertical: 23.0),
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(10.0),
                                color: Color(fillColor),
                                 ),
                                 child: Text(text,
                                  style:rubik.copyWith(
                                        fontSize:textSize,
                                        fontWeight: FontWeight.w600,
                                        color: Color(textColor), 
                                         )
                                         
                                 ),
                            ),
                          ),
                  ),
                );
  }
}