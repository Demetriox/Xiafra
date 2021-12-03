import 'package:carrers/constants/constants.dart';
import 'package:carrers/models/user_model.dart';
import 'package:carrers/secure_storage/session.dart';
import 'package:carrers/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:flutter_conditional_rendering/conditional_switch.dart';

class IQ extends StatefulWidget {
  final User user;
  const IQ(this.user, {Key? key}) : super(key: key);

  @override
  _IQState createState() => _IQState();
}

class _IQState extends State<IQ> {
  String career = "";
  String fieldValue = "";
  late Layout layout;
  final TextEditingController _fieldController = TextEditingController();

  @override
  void initState() {
    super.initState();
    layout = Layout(widget.user.career!);
  }

  @override
  Widget build(BuildContext context) {
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
                    Expanded(child:
                      ButtonLayout(layout.buttonPrimary, "IQ", () => {})
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
