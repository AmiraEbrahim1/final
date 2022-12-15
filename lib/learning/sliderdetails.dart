
import 'package:flutter/material.dart';
import 'package:yisitapp/learning/slidermodel.dart';

class DetailsScreen extends StatefulWidget {
  final Data data;
  const DetailsScreen({Key? key, required this.data}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black54),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              child: widget.data.container,
            )
          ),
         
        ],
      ),
    );
  }
}