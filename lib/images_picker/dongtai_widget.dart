import 'package:flutter/material.dart';
import 'package:picture_select/images_picker/images_gridview_widget.dart';
import 'package:picture_select/tools/MyUITools/BaseTitleBar.dart';
import 'package:picture_select/tools/MyUITools/BaseViewBar.dart';

class DongtaiWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return DongtaiWidgetState();
  }
}

class DongtaiWidgetState extends State<DongtaiWidget> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,

//      appBar: AppBar(title: Text('Draggable Demo')),
        appBar: new BaseViewBar(
            childView: new BaseTitleBar(
              "发动态",
              mycolor: Color(0xffb5dbf7),
              leftIcon: Icons.arrow_back_ios,
              rightText: "发布",
              rightClick: () {
                print("点击了干嘛啊。。。哦");
              },
            ),
            preferredSize: Size.fromHeight(50.0)),
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: TextField(
                cursorColor: Colors.black,
                cursorWidth: 1,
                decoration: InputDecoration(
                  hintText: '总要说点什么...',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),

                  border: InputBorder.none, //去掉底部下划线
                ),
              ),
            ),
           ImagesGridviewWidget(),
          ],
        ));
  }


}
