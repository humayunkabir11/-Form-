import 'package:exam5/main.dart';
import 'package:exam5/signinpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CongratulationPage extends StatelessWidget {
  const CongratulationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
              icon: Icon(Icons.arrow_back),
              iconSize: 28,
              color: Color(0xff696969),
            ),
            // Icon(Icons.arrow_back,
            //   size: 28,
            //   color: Color(0xff696969),),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('images/imags.jpg'),
                  height: 200,width: 200,),
                  Text(
                    'Congratulations!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.withOpacity(0.5)
                    ),
                  ),
                  SizedBox(height: 25,),
                  Text('Your Account Has been Created succesfully',),
                  SizedBox(height: 25,),
                  Container(
                    width:double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color:Colors.grey),
                        color: Colors.blue
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Icon(Icons.search,color: Colors.white,),
                        ),
                        SizedBox(width: 8,),
                        Text('Find Favourite Jobs ',style: TextStyle(
                            color: Colors.white
                        ),),
                      ],
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
