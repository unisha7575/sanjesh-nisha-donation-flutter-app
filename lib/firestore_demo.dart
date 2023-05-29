import 'package:flutter/material.dart';

class FirestoreDemo extends StatefulWidget {
  const FirestoreDemo({Key? key}) : super(key: key);

  @override
  State<FirestoreDemo> createState() => _FirestoreDemoState();
}

class _FirestoreDemoState extends State<FirestoreDemo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}
