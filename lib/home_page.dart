  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
  import 'package:hexcolor/hexcolor.dart';
import 'package:myfirstapplication/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                      hintText: 'Prénom',
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
                height: MediaQuery.of(context).size.height / 14,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Nom de famille',
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
                height: MediaQuery.of(context).size.height / 14,
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
                height: MediaQuery.of(context).size.height / 14,
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
                height: MediaQuery.of(context).size.height / 15 * 1,
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
                        "Sign UP",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Center(
                    child: CupertinoButton(
                      child: Text(
                          "Sign In"
                      ),
                      onPressed: () {
                        Navigator.push(context, CupertinoPageRoute(builder: (context) => const Login()));
                      },
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
