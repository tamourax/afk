
import 'package:afk/logainpage.dart';
import 'package:flutter/material.dart';

import 'assetsdata.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    
    goToNextView();
  } 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  Colors.grey,
     
      body: Center(
        child: Image.asset(AssetsData.logo)),
    );
  }

  void goToNextView() {
    Future.delayed(const Duration(seconds: 3), () {
    // Get.to(OnbordingView());
   Navigator.push(context, MaterialPageRoute( builder: (context) =>  LogainPage()));       
          }

    
    
    );
}
}
