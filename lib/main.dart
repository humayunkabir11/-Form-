
import 'package:exam5/signinpage.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(image: AssetImage('images/bg,exam5.jpg',
          ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap:(){
                    // Get.to(()=>AnotherSign(),transition: Transition.zoom);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                    },
                  child: Icon(Icons.arrow_back,
                    size: 28,
                    color: Color(0xff696969),),
                ),
                SizedBox(height: 22,),
                Center(
                  child: Container(
                    width: 360,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: LinearProgressIndicator(
                      value: 0.6,
                        backgroundColor: Colors.grey,
                        color: Color(0xff14a210)
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Text('Select Gender,',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
               SizedBox(height: 25,),
               Container(
                 width:double.infinity,
                 height: 40,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5),
                   border: Border.all(color:Colors.grey)
                 ),
                 child: Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left:8.0),
                       child: Icon(Icons.person),
                     ),
                     SizedBox(width: 8,),
                     Text('Female'),
                   ],
                 ),
                   ),
                SizedBox(height: 15,),
               Container(
                 width:double.infinity,
                 height: 45,
                 decoration: BoxDecoration(
                   color: Colors.blue,
                   borderRadius: BorderRadius.circular(5),
                   border: Border.all(color:Colors.grey)
                 ),
                 child: Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left:8.0),
                       child: Icon(Icons.female_outlined),
                     ),
                     SizedBox(width: 8,),
                     Text('Male'),
                   ],
                 ),
                   ),
               SizedBox(height: 15,),
               Container(
                 width:double.infinity,
                 height: 45,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5),
                   border: Border.all(color:Colors.grey)
                 ),
                 child: Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left:8.0),
                       child: Icon(Icons.transgender_outlined),
                     ),
                     SizedBox(width: 8,),
                     Text('Others'),
                   ],
                 ),
                   ),
              ],

            ),
          ),
          Positioned(
            bottom: 20,
            left: 150,
            child: Container(
              child: Column(
                children: [
                  Text('For any help',
                    style: TextStyle(fontSize: 13,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.01,
                        color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Text('Call at 01913682281',style: TextStyle(fontSize: 13,color: Color(0xffde1e37),fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 30,
            child: Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInPage()));
                    },
                    child: Icon(Icons.arrow_forward_sharp,
                      color: Colors.white,
                      size: 28,),
                    backgroundColor: Color(0xffde1e37),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

