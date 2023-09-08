import 'package:flutter/material.dart';
import 'package:myfirstapplication/Data.dart';
import 'package:hexcolor/hexcolor.dart';

var url = Uri.https('example.com', 'whatsit/create');
// var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
// var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
// print('Response status: ${response.statusCode}');
// print('Response body: ${response.body}');
// return response.body;

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  late Future<Data> futureData;
  final TextEditingController _controller = TextEditingController();
  String dynamictext = "Voici du text";

  @override
  void initState() {
    super.initState();
    futureData = fetchData();
  }

  updateText() {
    setState(() {
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(
               height: MediaQuery.of(context).size.height / 12 * 1,
              ),
                Text('$dynamictext'),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 14 * 1,
                ),
            FutureBuilder<Data>(
              future: futureData,
              builder: (context, snapshot) {
                if(snapshot.hasData)
                {
                  return Text(snapshot.data!.setup + "\n" + snapshot.data!.delivery);
                }
                else if (snapshot.hasError)
                {
                  return Text('${snapshot.error}');
                }
                return Text("Erreur");
              },
            ),
                Material(
                  child: InkWell(
                    onTap: (){
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
                          "Test",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
