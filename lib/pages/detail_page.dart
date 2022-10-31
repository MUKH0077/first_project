import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, this.input =''}) : super(key: key);
static final  String id = "detailpage";

final String input;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: (){
            Navigator.of(context).pop({'data': "The Best"});
          },
          color: Colors.red,
          child: Text(widget.input),
        ),
      )
    );
  }
}
