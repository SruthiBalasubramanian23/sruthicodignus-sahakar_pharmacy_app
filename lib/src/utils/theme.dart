import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppTheme {
  AppTheme._();
  //**************************
  //colors
  //**************************

  static const Color backColor = Color(0xffF5F5F5);
  static const Color titlecolor = Color(0xff232323);
  static const Color subtitlecolor = Color(0xff5F5F5F);
  static const Color buttoncolor = Color(0xff4BA200E5);
  static const Color textformfield = Color(0xffFFFFFF);
  static const Color labelcolor = Color(0xff5F5F5F);
  static const Color boldtext = Color(0xff172437);
  static const Color greycolor = Color(0xff6A7A92);
  static Color lineargradient = Color.fromARGB(255, 229, 229, 229);
  static const Color searchtextcolor = Color(0xffF7F9FB);
  static const Color headingcolor = Color(0xff232323);
  static Color bordercolor = Color(0xff79AC49).withOpacity(0.4);
  static const Color greencolor = Color(0xff79AC49);
  static const Color blackcolor = Color(0xff232323);
  static const Color violetcolor = Color(0xff2C3791);
  static const Color mrpcolor = Color(0xff50555C);
  static const Color smallblackcolor = Color(0xff50555C);
  static const Color smallgreencolor = Color(0xff79AC49);
   static const Color datecolor = Color(0xff8A8A8A);
   static const Color redcolor = Color(0xffAA3E3E);
   static const Color greyishcolor = Color(0xff8A8A8A);
   static const Color greydatecolor = Color(0xff50555C);


//*************************************************
//*************************************************

  //***************************
  //fonts
  //***************************

  // static final figTreeFont = GoogleFonts.nunito();
  // static final typography = GoogleFonts.lato();
//*************************************************
//*************************************************

  //**************************
  //textStyle
  //**************************

  static TextStyle headtext = TextStyle(
      color: titlecolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 18.sp,
      fontWeight: FontWeight.w600);

  static TextStyle subtitletext = TextStyle(
      color: subtitlecolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400);

  static TextStyle labelText = TextStyle(
      color: labelcolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 18.sp,
      fontWeight: FontWeight.w400);

  static TextStyle boldtitle = TextStyle(
      color: boldtext,
      // fontFamily: typography.fontFamily,
      fontSize: 16.sp,
      fontWeight: FontWeight.w700);

  static TextStyle greyText = TextStyle(
      color: greycolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 12.sp,
      fontWeight: FontWeight.w600);

  static TextStyle searchtext = TextStyle(
      color: searchtextcolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 14.sp,
      fontWeight: FontWeight.w500);

  static TextStyle headingtext = TextStyle(
      color: headingcolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 14.sp,
      fontWeight: FontWeight.w600);

  static TextStyle greentext = TextStyle(
      color: greencolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 16.sp,
      fontWeight: FontWeight.w700);

  static TextStyle blacktext = TextStyle(
      color: blackcolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 14.sp,
      fontWeight: FontWeight.w500);

  static TextStyle violettext = TextStyle(
      color: violetcolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 12.sp,
      fontWeight: FontWeight.w500);
  static TextStyle mrptext = TextStyle(
      color: mrpcolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 12.sp,
      fontWeight: FontWeight.w500);

      static TextStyle smallblacktext = TextStyle(
      color: smallblackcolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 12.sp,
      fontWeight: FontWeight.w500);

       static TextStyle smallgreentext = TextStyle(
      color: smallgreencolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 14.sp,
      fontWeight: FontWeight.w500);
       static TextStyle datetext = TextStyle(
      color: datecolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 12.sp,
      fontWeight: FontWeight.w500);
       static TextStyle redtext = TextStyle(
      color: redcolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 12.sp,
      fontWeight: FontWeight.w500);

       static TextStyle greyishText = TextStyle(
      color: greyishcolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 16.sp,
      fontWeight: FontWeight.w500);

      static TextStyle orderidText = TextStyle(
      color:smallgreencolor ,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 14.sp,
      fontWeight: FontWeight.w700);
       static TextStyle numberidText = TextStyle(
      color:mrpcolor ,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 14.sp,
      fontWeight: FontWeight.w700);

       static TextStyle deliveredtext = TextStyle(
      color:smallgreencolor ,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 12.sp,
      fontWeight: FontWeight.w400);

      static TextStyle greydatetext = TextStyle(
      color:greydatecolor ,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 12.sp,
      fontWeight: FontWeight.w400);


      static TextStyle ratetext = TextStyle(
      color:textformfield,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 14.sp,
      fontWeight: FontWeight.w600);

      static TextStyle mainheadingtext = TextStyle(
      color:headingcolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 16.sp,
      fontWeight: FontWeight.w500);


       static TextStyle greenprice = TextStyle(
      color: smallgreencolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 18.sp,
      fontWeight: FontWeight.w600);

         static TextStyle boldblackhead = TextStyle(
      color: blackcolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 18.sp,
      fontWeight: FontWeight.w500);

       static TextStyle status = TextStyle(
      color: blackcolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400);

      static TextStyle italicblack = TextStyle(
      color: blackcolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 18.sp,
      fontWeight: FontWeight.w400);

       static TextStyle buttontext = TextStyle(
      color: textformfield,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 18.sp,
      fontWeight: FontWeight.w700);

       static TextStyle paragraphgrey = TextStyle(
      color: greyishcolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 12.sp,
      fontWeight: FontWeight.w400);

      static TextStyle dategreentext = TextStyle(
      color: smallgreencolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 10.sp,
      fontWeight: FontWeight.w500);

       static TextStyle zerotext = TextStyle(
      color: redcolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 18.sp,
      fontWeight: FontWeight.w600);

       static TextStyle profilepageheadtext = TextStyle(
      color:greencolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 18.sp,
      fontWeight: FontWeight.w700);

       static TextStyle highlightredcolortext = TextStyle(
      color: redcolor,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 18.sp,
      fontWeight: FontWeight.w500);

       static TextStyle imagebuttontext = TextStyle(
      color: textformfield,
      // fontFamily: figTreeFont.fontFamily,
      fontSize: 18.sp,
      fontWeight: FontWeight.w500);
}

//************************************************
//************************************************
