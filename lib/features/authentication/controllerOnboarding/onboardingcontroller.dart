import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/features/authentication/screens/login/login.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPage = 0.obs;

  void updatePageIndicator(index){
    currentPage.value =index;
  }
  void dotNavigationClicked(index){
    currentPage.value = index;
    pageController.jumpTo(index);
  }
  void nextPage(){
    if(currentPage.value== 2){
      Get.off(() => const LoginScreen());
    }else{
      int page = currentPage.value +1;
      pageController.jumpToPage(page);
    }
  }
  void skip(){
    currentPage.value = 2;
    pageController.jumpToPage(2);
  }
}