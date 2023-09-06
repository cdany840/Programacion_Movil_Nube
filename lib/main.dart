import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:onboarding/card_planet.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget{
  Home({Key? key}) : super(key: key);
  
  final data =  [
    CardCourseData(
      title: "Sistemas computacionales", 
      subtitle: "La mejor carrera del Tecno", 
      image: const AssetImage("assets/images/Sis.jpg"), 
      backgroundColor: Color.fromARGB(255, 0, 106, 33), 
      titleColor: Colors.white, 
      subtitleColor:Colors.white70,
      background: LottieBuilder.asset("assets/animation/animation.json")
      ),
    CardCourseData(
      title: "Industrial", 
      subtitle: "La carrera más fácil del Tecno", 
      image: const AssetImage("assets/images/Ind.jpg"), 
      backgroundColor: Color.fromARGB(255, 0, 42, 157), 
      titleColor: Colors.white, 
      subtitleColor:Colors.white70,
      background: LottieBuilder.asset("assets/animation/animation.json")
      ),
    CardCourseData(
      title: "Electrónica", 
      subtitle: "Las carrera más peligrosa del Tecno", 
      image: const AssetImage("assets/images/Ele.jpg"), 
      backgroundColor: Color.fromARGB(255, 126, 0, 0), 
      titleColor: Colors.white, 
      subtitleColor: Colors.white70,
      background: LottieBuilder.asset("assets/animation.json")
      ),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ConcentricPageView(
        itemCount: 3,
       colors: data.map((e) => e.backgroundColor).toList(),
       itemBuilder: (int index) {
         return CardCourse(
          data: data[index],
         );},
      ),
    );
  }
}