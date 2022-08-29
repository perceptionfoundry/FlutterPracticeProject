
import 'package:flutter/material.dart';


class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int index = 0;
  List quotes = [
    "Life isn’t about getting and having, it’s about giving and being.",
    "Whatever the mind of man can conceive and believe, it can achieve.",
    "Strive not to be a success, but rather to be of value.",
    "You miss 100% of the shots you don’t take.",
    "I’ve missed more than 9000 shots in my career. I’ve lost almost 300 games. "
        "26 times I’ve been trusted to take the game winning shot and missed."
        " I’ve failed over and over and over again in my life. "
        "And that is why I succeed.",
    "The most difficult thing is the decision to act, the rest is merely tenacity.",
    "Every strike brings me closer to the next home run.",
    "Definiteness of purpose is the starting point of all achievement.",
    "We become what we think about.",
    "Life is 10% what happens to me and 90% of how I react to it.",
    "Your time is limited, so don’t waste it living someone else’s life."
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Expanded(
                child: Center(
                  child: Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: Text(quotes[index % quotes.length],
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight:FontWeight.bold,
                          )),
                      ),
                  ),
                )),

            Divider(thickness: 2),

            Padding(padding: const EdgeInsets.only(top:10),
               child:
                FlatButton.icon(
                onPressed: _showQuote,
                color: Colors.greenAccent.shade100,
                icon: Icon(Icons.wb_sunny),
                label: Text("Next")),
            ),

            Spacer()
          ],


        ),
      ),
    );
  }

  void _showQuote() {
    setState(() {
      index += 1;
    });

  }
}







class myBiz extends StatelessWidget {
  const myBiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal.shade300,
          body: Center(

              child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  //*******************  IMAGE
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("images/avatar.jpg"),
                  ),

                  // *********************** NAME
                  Text(
                    'Syed Shahrukh Haider',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // *********************** OCCUPATION
                  Text(
                    'iOS Developer',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.teal.shade100,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 2.5
                    ),
                  ),

                  // *********************** PHONE BOX
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.symmetric(vertical:10,horizontal: 25),
                    color: Colors.white,
                    child: Row(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: 5,),
                        Text('+2121',style: TextStyle(fontSize: 24,color: Colors.teal.shade900),)],
                    ),
                  ),

                  // *********************** EMAIL BOX
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                    color: Colors.white,
                    child: Row(
                      children: [
                        Icon(Icons.email,
                          color: Colors.teal.shade400,
                        ),
                        SizedBox(width: 2.5,),
                        Text('saas@asads.com',style: TextStyle(fontSize: 24,color: Colors.teal.shade900),)],
                    ),
                  )

                ],

              )


          )



      ),
    );
  }


}

class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scafold"),
        centerTitle: true,
        backgroundColor: Colors.green.shade200,
        actions: [
          IconButton(onPressed: ()=> debugPrint("yummy"), icon: Icon(Icons.email))
        ],
      ),

      backgroundColor: Colors.green.shade400,
      //****** 2
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "item1"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit),label: "item2"),
          BottomNavigationBarItem(icon: Icon(Icons.access_alarm),label: "item3"),
        ],
        onTap: (int index){debugPrint("tapped index:  $index");},
      ),

      //***** 3
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.call_missed),
        onPressed: (){
          debugPrint("Call btn action");
        },
      ),

      body:
      Center(
        child: Container(
          alignment: Alignment.center,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text("Shahrukh Haider",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,),
              ),

            //****** 1
              customButton(),
            ],
          ),
        ),
      ),
    );
  }
}


// 1 part
class customButton extends StatelessWidget {
  const customButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        final snackBar = SnackBar(content: Text("Morning Shahrukh"),
        backgroundColor: Colors.amber.shade300,);

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text("Press Me!!!!",
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
