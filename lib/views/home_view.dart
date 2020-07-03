import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/Slot.dart';

class HomePage extends StatelessWidget {
  final List<Slot> Slots = [
    Slot("Morning", DateTime.now(), 200.0, DateTime.now()),
    Slot("Afternoon", DateTime.now(), 300.0, DateTime.now()),
    Slot("Evening", DateTime.now(), 400.0, DateTime.now()),
    Slot("Night", DateTime.now(), 500.0, DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          itemCount: Slots.length,
          itemBuilder: (BuildContext context, int index) =>
              buildSlots(context, index)),
    );
  }

  Widget buildSlots(BuildContext context, int index) {
    return new Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 5,bottom: 8),
                child: Row(
                  children: <Widget>[
                    Text(Slots[index].title,style: new TextStyle(fontSize: 30.0,)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:8.0,bottom: 80),
                child: Row(
                  children: <Widget>[
                    Text(
                        "${DateFormat('dd/MM/yyyy').format(Slots[index].startDate).toString()} - ${DateFormat('dd/MM/yyyy').format(Slots[index].endDate).toString()}"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Spacer(),
                    Text("\$ ${Slots[index].budget.toString()}", style: new TextStyle(fontSize: 35.0,),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
