import 'package:flutter/material.dart';
import 'package:bookmyseat2/models/Slot.dart';

class NewSlots extends StatelessWidget {
  final Slot slot;
  NewSlots({Key key, @required this.slot}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    TextEditingController _tittleController = new TextEditingController();
    _tittleController.text = slot.title;
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Slot'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Enter slot"),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                controller: _tittleController ,
                autofocus: true,
              ),
            ),
            RaisedButton(
              child: Text("continue"),
              onPressed:() {
                slot.title = _tittleController.text;


            }
            ),
          ],
        ),
      ),
    );
  }
}
