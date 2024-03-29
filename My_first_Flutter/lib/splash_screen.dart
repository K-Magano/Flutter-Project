import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:my_first_flutter/home_screen.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
//Adding SingleTickerProviderStateMixin for the SplashScreen behavior , duration and animation

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

@override
  void initState() {
    // this will run once the screen loads
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed( const Duration(seconds:3),() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const HomeScreen(),
      ),
      );
    }) ;
  }
 //Making sure the top bar comes back

 @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
      super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color (0xFFF55722), 
       body: Center( 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/image/Quicloc8-logo.png", height: 130,),
            const SizedBox(height: 30,),
        ],
        ),
      )
   );
  }
}