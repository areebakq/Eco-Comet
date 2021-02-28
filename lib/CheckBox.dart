import 'package:flutter/material.dart';

class CheckBoxes extends StatefulWidget {
  @override
  _CheckBoxesState createState() => _CheckBoxesState();
}

class _CheckBoxesState extends State<CheckBoxes> {
  bool isCheck = false;
  Map<String, bool> tips = {
    '1. Donate Clothes': false,
    '2. Reduce Food Waste': false,
    '3: Buy healthy foods with less packaging': false,
    '4: Save leftovers for tomorrow': false,
    '5. Buy items with less packaging': false,
    '6. Use a waterbottle instead of plastic bottles': false,
    '7. Recycle (use the smart camera!)': false,
    '8. Purchase items made of recycle material': false,
    '9. Try composting': false,
    '10. Buy rechargable batteries': false,
    '11. Buy Items Packaged in Recycled Cartons': false,
  };

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            padding: const EdgeInsets.only(top: 18.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(alignment: Alignment.centerLeft,
                      child: Text('1. Donate Clothes', textAlign: TextAlign.left,style: TextStyle(fontFamily: 'Mulish', fontSize: 20, color: Colors.white))),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(alignment: Alignment.centerLeft,child: Text('2. Reduce Food Waste', textAlign: TextAlign.left,style: TextStyle(fontFamily: 'Mulish', fontSize: 20, color: Colors.white))),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(alignment: Alignment.centerLeft,child: Text('3: Buy healthy foods with less packaging',textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Mulish', fontSize: 20, color: Colors.white))),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(alignment: Alignment.centerLeft,child: Text('4: Save leftovers for tomorrow',textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Mulish', fontSize: 20, color: Colors.white))),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(alignment: Alignment.centerLeft,child: Text('5. Buy items with less packaging', textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Mulish', fontSize: 20, color: Colors.white))),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(alignment: Alignment.centerLeft,child: Text('6. Use a waterbottle instead of plastic bottles', textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Mulish', fontSize: 20, color: Colors.white))),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(alignment: Alignment.centerLeft,child: Text('7. Recycle (use the smart camera!)', textAlign: TextAlign.left,style: TextStyle(fontFamily: 'Mulish', fontSize: 20, color: Colors.white))),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(alignment: Alignment.centerLeft,child: Text('8. Purchase items made of recycle material',textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Mulish', fontSize: 20, color: Colors.white))),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(alignment: Alignment.centerLeft,child: Text('9. Try composting',textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Mulish', fontSize: 20, color: Colors.white))),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(alignment: Alignment.centerLeft,child: Text('10. Buy rechargable batteries', textAlign: TextAlign.left,style: TextStyle(fontFamily: 'Mulish', fontSize: 20, color: Colors.white))),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(alignment: Alignment.centerLeft,child: Text('11. Buy Items Packaged in Recycled Cartons', textAlign: TextAlign.left,style: TextStyle(fontFamily: 'Mulish', fontSize: 20, color: Colors.white))),
                ),
              ],
            ),
        ),
      ),
    );
  }

}