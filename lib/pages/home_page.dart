import 'package:flutter/material.dart';

import 'detail_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
static final String id = "home_page";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = "Open Detail Page";
  Future _openDetails()async{
    Map results = await Navigator.of(context).push (MaterialPageRoute(
      builder: (BuildContext context) {
        return DetailPage(input: "PDP Online");
      }
    ));

    if(results != null && results.containsKey("data")) {
      data = results['data'];
      setState(() {

      });
    }else{
      print("Nothing");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: (){
            _openDetails();
            // Navigator.pushNamed(context, DetailPage.id);
          },
          color: Colors.blue,
          child: Text(data),
        ), // FlatButton
      ),
    );
  }
}

