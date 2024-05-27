import 'package:flutter/material.dart';
import 'package:login_ui/HomeScreen.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController Emailcontroller = TextEditingController();
  TextEditingController Passontroller = TextEditingController();
  TextEditingController Cpasscontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
        }, icon: Icon(Icons.arrow_back_outlined)),
       
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Create Account",
                style: TextStyle(
                    fontSize: 36, color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Card(
                elevation: 40,
                child: TextFormField(
                  controller: namecontroller,
                  decoration: InputDecoration(
                    
                      // border: OutlineInputBorder(),
                      labelText: "Full name",
                      icon: Icon(Icons.person_3_outlined)),
                ),
              ),
            ),
            SizedBox(height: 12,),

             Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Card(
                elevation: 40,
                child: TextFormField(
                  controller: Emailcontroller,
                  decoration: InputDecoration(
                      // border: OutlineInputBorder(),
                      labelText: "Email",
                      icon: Icon(Icons.email_outlined)),
                ),
              ),
            ),
            SizedBox(height: 12,),
            
             Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Card(
                elevation: 40,
                child: TextFormField(
                  controller: Passontroller,
                  
                  decoration: InputDecoration(
                      // border: OutlineInputBorder(),
                      labelText: "Password",
                      icon: Icon(Icons.lock_outline)),
                ),
              ),
            ),
            SizedBox(height: 12,),
            
             Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Card(
                elevation: 40,
                child: TextFormField(
                  controller: Cpasscontroller,
                  decoration: InputDecoration(
                      // border: OutlineInputBorder(),
                      disabledBorder: InputBorder.none,
                      labelText: "Confirm password",
                      icon: Icon(Icons.person_3_outlined)),
                ),
              ),
            ),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20),
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
                        "Sign up ->",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 330,),
                 Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Text("Already have an account?"),
                                 TextButton(onPressed:(){
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>HomeScreen()));
                                 }, child: Text("Login",style: TextStyle(color: Colors.amber),))
                               ],
                             ),
          ],
        ),
      ),
    );
  }
}
