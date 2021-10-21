import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

TextEditingController _textEditingController=TextEditingController();
_handler() async{
  try{
http.Response response=
await http.get(Uri.parse("https://yesno.wtf/api"));
  }catch(err, stacktrace){
    print(err);
    print(stacktrace);
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          "You want to know Veeh?",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 0.5 * MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(

                  ),
                  labelText: "Ask a question",
                    labelStyle: TextStyle( color: Colors.grey, fontStyle: FontStyle.italic),
                ),
              ),
            ),
           SizedBox(height: 30,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               ElevatedButton(
                 style: ElevatedButton.styleFrom(
                   primary: Colors.green[800],
                  onPrimary: Colors.orange,
                  shadowColor: Colors.indigo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0),
                  ),

                 ),
                 child: Text(
                   "Get Answer",style:  TextStyle(color: Colors.black,
                 fontSize: 18.0),),
                   onPressed: (){},
               ),
               SizedBox(width: 40,),
               ElevatedButton.icon(
                   onPressed: (){},
                   icon: Icon(Icons.favorite_sharp,color: Colors.red[900],),
                   label: Text("Reset",style: TextStyle(
                     color: Colors.black
                   ),))
             ],
           ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
