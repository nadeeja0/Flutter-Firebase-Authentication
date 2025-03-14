
import 'package:firebase_auth_tutorials/constants/colors.dart';
import 'package:flutter/material.dart';

const TextStyle descriptionStyle = TextStyle(fontSize: 12,color: textLight,fontWeight: FontWeight.w400);
dynamic textInputDecoration = InputDecoration(
  hintText: "Password",
  hintStyle:  TextStyle(color: textLight,fontSize: 15),
  fillColor: bgBlack,
  filled: true,
  enabledBorder: OutlineInputBorder(
      borderSide:  BorderSide(color:mainYellow,width: 1),
      borderRadius: BorderRadius.circular(100),
  ),
  focusedBorder:  OutlineInputBorder(
      borderSide:  BorderSide(color:mainYellow,width: 1),
      borderRadius: BorderRadius.circular(100),
  ),

);