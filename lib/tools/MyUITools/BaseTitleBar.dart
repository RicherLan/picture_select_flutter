
/*
  自定义appbar
 */

import 'package:flutter/material.dart';

class BaseTitleBar extends StatelessWidget {
  String title;
  Color mycolor;
  IconData leftIcon;
  String rightText;
  final VoidCallback rightClick;

  BaseTitleBar(this.title, {this.mycolor,this.leftIcon = Icons.arrow_back_ios, this.rightText, this.rightClick,});

  @override
  Widget build(BuildContext context) {
    return new AppBar(
      flexibleSpace: Container(
        /// 实现渐变色的效果
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: mycolor==null?[
              Color.fromRGBO(26, 155, 214, 1),
              Color.fromRGBO(54, 209, 193, 1)
            ]:[mycolor,mycolor],
          ),
        ),
      ),
      title: new Text(this.title),
      leading: new IconButton(
        /// 左边图标，视情况而定，自己穿参数
        icon: Icon(this.leftIcon),
        color: Colors.white,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      brightness: Brightness.dark,
      elevation: 2.0,
      centerTitle: true,
      actions: <Widget>[
        /// 右边的 布局，自己可以添加，是一个widget的一个集合，自已需求添加即可，我这里写了一个Text，和text的点击事件，
        new RightView(title: rightText, rightClick: rightClick),
      ],
    );
  }
}

/// 右边的 布局，以及点击事件
class RightView extends StatelessWidget {
  String title;
  VoidCallback rightClick;

  RightView({this.title, this.rightClick});

  @override
  Widget build(BuildContext context) {
    var containView;
    if (title != Null) {
      containView = new Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0),
        child: GestureDetector(
          child: Text(
            this.title,
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
          onTap: this.rightClick,
        ),
      );
    } else {
      containView = Text("");
    }
    return containView;
  }
}
