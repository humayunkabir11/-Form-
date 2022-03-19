import 'package:exam5/anothersign.dart';
import 'package:flutter/material.dart';
class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

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
                    Navigator.pop(context);
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
                        value: 1,
                        backgroundColor: Colors.grey,
                        color: Color(0xff14a210)
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Text('Set as User id (Email Address/Phone\n Number),',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
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
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Icon(Icons.mail,color: Colors.white,),
                      ),
                      SizedBox(width: 8,),
                      Text('humayan180024@diit.edu.bd',style: TextStyle(
                        color: Colors.white
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  width:double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color:Colors.grey),

                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Icon(Icons.mobile_screen_share),
                      ),
                      SizedBox(width: 8,),
                      Text('Mobile Number'),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Text('Type PassWord',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
                SizedBox(height: 8,),
                Text('Use At Least 8 to 12 charecter',style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 10
                ),
                ),

                SizedBox(height: 20,),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      labelText: 'password',
                      floatingLabelBehavior: FloatingLabelBehavior.always
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      labelText: 'Confirmed password',
                        floatingLabelBehavior: FloatingLabelBehavior.always
                    ),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AnotherSign()));
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
