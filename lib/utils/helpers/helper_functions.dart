import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class THelperFunctions{
  THelperFunctions._();

  static Color? getColor(String color){
    if(color =='Green'){
      return Colors.green;
    }else if(color =='Red'){
      return Colors.red;
    }else if(color =='Blue'){
      return Colors.blue;
    }else if(color =='Black'){
      return Colors.black;
    }
    else if(color =='Pink'){
      return Colors.pink;
    }
    else if(color =='Grey'){
      return Colors.grey;
    }
    else if(color =='Purple'){
      return Colors.purple;
    }
    else if(color =='White'){
      return Colors.white;
    }
    else if(color =='Brown'){
      return Colors.brown;
    }
    else if(color =='Teal'){
      return Colors.teal;
    }
    else if(color =='Indigo'){
      return Colors.indigo;
    }
    else{
      return null;
    }
  }

  static void showSnackBar(String message){
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message),duration: const Duration(seconds: 2)),
    );
  }
  static void showAlert(String title, String message){
    showDialog(
      context: Get.context!, 
      builder: (BuildContext context){
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: const Text('OK'))
          ],
        );
      }
      );
  }
  static void navigateToScreen(BuildContext context, Widget screen){
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => screen));
  }
  static String truncateText(String text, intmaxLength){
    if(text.length <=intmaxLength){
      return text;
    }else{
      return '${text.substring(0,intmaxLength)}...';
    }
  }
  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness == Brightness.dark;
  }
  static bool isLightMode(BuildContext context){
    return Theme.of(context).brightness == Brightness.light;
  }
  static Size screenSize(){
    return MediaQuery.of(Get.context!).size;
  }
  static double screenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }
  static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }
  static String getFormattedDate(DateTime date, {String formate = 'dd-MMM-YYYY'}){
    return DateFormat(formate).format(date);
  }
  static List<T> removeDuplicate<T>(List<T> list){
    return list.toSet().toList();
  }
  static List<Widget> wrapWidgets(List<Widget> widget, int rowSize){
    final wrappedList = <Widget>[];
    for(var i=0;i <widget.length; i +=rowSize){
      final rowChildren = widget.sublist(i,i+rowSize> widget.length? widget.length: i+rowSize);
      wrappedList.add(Row(children: rowChildren,));
    }
    return wrappedList;
  }
}