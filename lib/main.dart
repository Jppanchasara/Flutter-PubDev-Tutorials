import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:badges/badges.dart'as badges;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:animated_text_kit/animated_text_kit.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title:const Center(
          child:  Text(
            'Pub.Dev Example',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            Column(
                children: [
                  Row(
                    children:const [
                      Text('Noramal Icon :',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                      SizedBox(width: 20,),
                      Icon(Icons.add),
                      SizedBox(width: 20,),
                      Icon(Icons.download),
                      SizedBox(width: 20,),
                      Icon(Icons.check),
                      SizedBox(width: 20,),
                      Icon(Icons.home),
                    ],
                  ),
                  Row(
                    children:const [
                      Text('FontAwesome Icon :',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(width: 20,),
                      FaIcon(FontAwesomeIcons.add),
                      SizedBox(width: 20,),
                      FaIcon(FontAwesomeIcons.download),
                      SizedBox(width: 20,), 
                      FaIcon(FontAwesomeIcons.check),
                      SizedBox(width: 20,),
                      FaIcon(FontAwesomeIcons.home),
        
                    ],
                  ),
                ],
              ),
            const SizedBox(
              height:30
            ),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Badge(
                    child: Icon(Icons.settings,size: 80,),
                    shape: BadgeShape.square,
                    badgeColor:const Color.fromARGB(255, 243, 40, 168),
                    borderRadius: BorderRadius.circular(5),
                    animationDuration: const Duration(seconds: 5),
                    badgeContent: const Text('1', style: TextStyle(color: Colors.white,fontSize: 30)),
                
                  ),
                  const SizedBox(width: 50,),
                  Badge(
                    child: Icon(Icons.shopping_cart_rounded,size: 80,),
                    shape: BadgeShape.circle,
                    badgeColor: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                    badgeContent: const Text('10', style: TextStyle(color: Colors.white,fontSize: 20)),
                    animationDuration: const Duration(seconds:10 ),
                    toAnimate: true ,
                  ),
                  const SizedBox(width:50),
                  Badge(
                    child: Icon(Icons.notifications,size: 80,),
                    shape: BadgeShape.circle,
                    badgeColor:Colors.green,
                    borderRadius: BorderRadius.circular(5),
                    animationDuration: const Duration(seconds: 15),
                    badgeContent: const Text('15', style: TextStyle(color: Colors.white,fontSize: 30)),
                
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            const ReadMoreText(
                  'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  trimLines: 2,
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  moreStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.red),
                  lessStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.red)
            ),
            const SizedBox(height: 20,),
            const Text('OTP Verification',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black,fontStyle: FontStyle.normal),),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: PinCodeTextField(
                appContext: context,
                cursorColor: Colors.teal,
                obscureText: true,
               // obscuringCharacter: '.',
                length: 4,
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(15),
                  borderWidth: 6,
                  fieldHeight: 50,
                  fieldWidth: 50,
                  activeFillColor: Colors.black,
                  inactiveFillColor: Colors.pink,

                  selectedColor: Colors.pink,
                  inactiveColor: Colors.blue,
                  activeColor: Colors.black,
                ),
                onChanged: (String value) { 

                },
              ),
            ),
            const SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  
                  borderWidth: 3,
                  fieldHeight: 50,
                  fieldWidth: 50,  
                ),
                onChanged: (String value) { 
                },
              ),
            ),
            const SizedBox(height: 5,),
            
            Expanded(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Jayesh Panchasara',
                    textStyle: const TextStyle(
                     fontSize: 40.0,
                     fontWeight: FontWeight.bold,
                    ),
                    speed: const Duration(milliseconds: 300),
                  ),
                ],
              
                 totalRepeatCount: 4,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
            ),
            const SizedBox(height: 10,),
            AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText(
                  'Jayesh',
                  textStyle:const TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ScaleAnimatedText(
                'Panchasara',
                textStyle:const TextStyle(fontSize: 60.0, fontFamily: 'Canterbury'),
              ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            const SizedBox(height: 5,),
            const Text('made by Panchasara Jayesh',textAlign: TextAlign.left,
            style:TextStyle(fontSize:20, fontWeight : FontWeight.bold)),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    ));
  }
}
