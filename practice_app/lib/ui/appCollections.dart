
import 'package:flutter/material.dart';



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
