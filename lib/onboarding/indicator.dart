import 'package:flutter/material.dart';

class Indicator extends AnimatedWidget {

  final PageController controller;
  final int pageCount;
  Indicator({required this.controller,required this.pageCount}) : super(listenable: controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            itemCount: pageCount,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return _createIndicator(index);
            })],
      ),
    );
  }
  Widget _createIndicator(index) {
    double w=10;
    double h=10;
    MaterialColor color=Colors.grey;

    if(controller.page==index)
    {
      color=Colors.blueGrey;
      h=13;
      w=13;
    }

    return Container(
      height: 26,
      width: 26,
      child: Center(
        child: AnimatedContainer(
          margin: EdgeInsets.all(5),
          width: w,
          height: h,
          duration: Duration(milliseconds: 400),
          decoration: BoxDecoration(
            color: color, // added
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
    );
  }
}