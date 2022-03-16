import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ocean/home_page.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
void initState() {
  super.initState();
  Timer(
    const Duration(seconds: 3), 
    ()=> Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context)=>const Home()))); 
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 197, 226, 177),
              Color.fromARGB(255, 197, 226, 177),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Column(
            children: [
              Center(
                child: Image.asset(
                  'assets/images/logo.png',                  
                  height: 200.0,
                  width: 200.0,),
              ),
              const Text("OCEANUG",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 6, 52, 131),
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
                ),
              ),
            ],
          ),
            
            const CircularProgressIndicator(),

        ]),
      ),
      
    );
  }
}