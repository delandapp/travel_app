import 'package:flutter/material.dart';
import 'package:travelapp/book_flight_page.dart';

class LandingPage extends StatefulWidget {
  static const nameRoute = '/landingPage';
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(400),
                  color: Colors.white
                ),
                child: Image.asset("assets/image-1.png"),
              ),
              const Expanded(child: SizedBox()),
              const Text("Let`s Enjoy A \n New World", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700,fontSize: 50),textAlign: TextAlign.center,),
              const Expanded(child: SizedBox()),
              const Text("Search the safest destination", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700,fontSize: 20),textAlign: TextAlign.center,),
              const Expanded(child: SizedBox()),
              ElevatedButton(onPressed: () => Navigator.of(context).pushNamed(BookFlightPage.nameRoute), style: ElevatedButton.styleFrom(minimumSize: const Size(320, 60),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),backgroundColor: const Color(0xFF00215E)),child: const Text("Get Started", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700,fontSize: 20),textAlign: TextAlign.center,))
            ],
          ),
        ),
      ),
    );
  }
}
