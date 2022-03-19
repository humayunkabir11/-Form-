import 'package:exam5/congratulation_page.dart';
import 'package:flutter/material.dart';
class AnotherSign extends StatelessWidget {
  const AnotherSign({Key? key}) : super(key: key);

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
                        value: 0.8,
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
                SizedBox(height: 20,),
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'country code',
                        floatingLabelBehavior: FloatingLabelBehavior.always
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'mobile Number',
                        floatingLabelBehavior: FloatingLabelBehavior.always
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Column(
                  children: [
                    Row(children:[
                      Expanded(
                        child: Container(
                            margin:
                            const EdgeInsets.only( right: 20.0),
                            child: Divider(
                              color: Colors.black54,
                              height: 36,
                            )),
                      ),
                      Text("OR"),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(left: 20.0),
                            child: Divider(
                              color: Colors.black54,
                              height: 36,
                            )),
                      ),
                    ]),
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'mail',
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
            right: 20,
            child: Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CongratulationPage()));
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
