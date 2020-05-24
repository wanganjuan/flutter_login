import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key, @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size =  MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // 图片
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset('assets/images/main_top.png', width: size.width * 0.3,)
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset('assets/images/main_bottom.png', width: size.width * 0.2,)
          ),
          child
        ],
      ),
    );
  }
}