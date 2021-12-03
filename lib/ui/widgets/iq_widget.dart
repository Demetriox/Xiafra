import 'package:carrers/constants/constants.dart';
import 'package:carrers/secure_storage/session.dart';
import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:flutter_conditional_rendering/conditional_switch.dart';

class IQ extends StatefulWidget {
  const IQ({Key? key}) : super(key: key);

  @override
  _IQState createState() => _IQState();
}

class _IQState extends State<IQ> {
  String career = "";
  getCareer() async {
    career = await Session().getCareer();
  }
  @override
  void initState() {
    super.initState();
    getCareer();
  }

  @override
  Widget build(BuildContext context) {
    Layout layout = Layout(career);
    return Column(
      children: <Widget> [
          Text("IQ", style: TextStyle(
            color: layout.backgroundFontColor
          ),)
      ],
    );
  }
}
