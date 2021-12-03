import 'package:carrers/constants/constants.dart';
import 'package:carrers/secure_storage/session.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:flutter_conditional_rendering/conditional_switch.dart';

class ISC extends StatefulWidget {
  const ISC({Key? key}) : super(key: key);

  @override
  _ISCState createState() => _ISCState();
}

class _ISCState extends State<ISC> {
  String career = "";
  String fieldValue = "";
  final TextEditingController _fieldController = TextEditingController();
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
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
            Flexible (
                flex: 1,
                child: TextField(
                  controller: _fieldController,
                  onChanged: (value) {
                    setState(() {
                      fieldValue = value;
                    });
                  },
                )
            ),
            Flexible(
                flex: 1,
                child: Text("$fieldValue")
            ),
            Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: () => {}, child: Text("ISC"), style: ElevatedButton.styleFrom(
                      primary: layout.buttonPrimary.backgroundColor,
                      textStyle: TextStyle(
                        color: layout.buttonPrimary.fontColor
                      )
                    )),
                    ElevatedButton(onPressed: () => {}, child: Text("Mostrar"), style: ElevatedButton.styleFrom(
                    primary: layout.buttonSecondary.backgroundColor,
                        textStyle: TextStyle(
                            color: layout.buttonSecondary.fontColor
                        )
                    )),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
