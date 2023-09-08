import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:myfirstapplication/home_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: HexColor("#181920"),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/6,right: 0.0),
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 14 * 3,
                child: Center(

                  child: Row(
                    children: [
                      Icon(Icons.account_circle_outlined, size: 250,)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 14 * 1,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: HexColor("#5B5C68"),
                ),
                width: MediaQuery.of(context).size.width/ 1.25,
                height: MediaQuery.of(context).size.height/14,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                  ),
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return 'Veuillez complété le champ !';
                    }
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: HexColor("#5B5C68"),
                ),
                width: MediaQuery.of(context).size.width/ 1.25,
                height: MediaQuery.of(context).size.height/14,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                  ),
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return 'Veuillez complété le champ !';
                    }
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 18 * 1,
              ),
              Material(
                color: Colors.transparent,

                child: InkWell(
                  onTap: (){
                    print("test");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: HexColor("#495BFF"),
                    ),
                    width: MediaQuery.of(context).size.width / 1.25,
                    height: MediaQuery.of(context).size.height / 14,
                    child: Center(
                      child: Text(
                        "Sign In",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      child: Center(
                        child: Text(
                          "Don't have an account ?",
                          style: TextStyle(color: HexColor("#5B5C68")),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(

                          child: CupertinoButton(
                            child: Text(
                                "Sign Up"
                            ),
                            onPressed: () {
                              Navigator.push(context, CupertinoPageRoute(builder: (context) => const HomePage()));
                            },
                          )
                      ),
                    )
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
