import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_ui/Create_Account.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController Emailcontroller = TextEditingController();
  TextEditingController Pwcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           
          Padding(
            padding: const EdgeInsets.only(top:150 ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
               
                Padding(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 46, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20,right: 20),
            
                  child: Text(
                    "Please sign in to continue",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                   padding: EdgeInsets.only(left: 20,right: 20),
                  child: Card(
                    elevation: 40,
                    child: TextFormField(
                      controller: Emailcontroller,
                      decoration: InputDecoration(
                          icon: Icon(Icons.email_outlined),
                          // border: OutlineInputBorder(),
                          labelText: "email"),
                    ),
                  ),
                ),
                SizedBox(height: 12,),
          
                Padding(
                         padding: EdgeInsets.only(left: 20,right: 20),
            
                  child: Card(
                    elevation: 40,
                    child: TextFormField(
                      controller: Pwcontroller,
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock_outline_rounded),
                          // border: OutlineInputBorder(),
                          labelText: "password",
                  // suffixText: "forgot",
                          suffix: Text(
                            "forgot",
                            style: TextStyle(color: Colors.amber),
                          )),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (_)=>CreateAccount()));
                        },
                        child: Container(
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                              // color: Colors.amber,
                              borderRadius: BorderRadius.circular(25),
                              gradient: LinearGradient(colors: [
                                const Color.fromARGB(255, 247, 222, 149),
                                const Color.fromARGB(255, 245, 212, 112),
                                const Color.fromARGB(255, 247, 199, 57),
                                Colors.amber,
                              ])),
                          child: Center(
                            child: Text(
                              "LOGIN ->",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height:380,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAccount()));
                    }, child: Text("Sign up",style: TextStyle(color: Colors.amber),))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
