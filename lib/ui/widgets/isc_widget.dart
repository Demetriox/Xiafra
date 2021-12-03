import 'package:carrers/constants/constants.dart';
import 'package:carrers/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ISC extends StatefulWidget {
  final User user;
  const ISC(this.user, {Key? key}) : super(key: key);

  @override
  _ISCState createState() => _ISCState();
}

class _ISCState extends State<ISC> {
  String fieldValue = "";
  late Layout layout;
  final TextEditingController _fieldController = TextEditingController();

  showModal() {
    showDialog(
        context: context,
        builder: (BuildContext context) =>
            AlertDialog(title: Center(child: Text(widget.user.career!))));
  }

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
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            Flexible(
              flex: 1,
              child: TextField(
                controller: _fieldController,
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(fieldValue),
            ),
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () => {showModal()},
                      child: const Text("ISC"),
                      style: ElevatedButton.styleFrom(
                          primary: layout.buttonPrimary.backgroundColor,
                          textStyle: TextStyle(
                              color: layout.buttonPrimary.fontColor))),
                  ElevatedButton(
                    onPressed: () => {
                      setState(() {
                        fieldValue = _fieldController.text;
                        _fieldController.text = " ";
                      })
                    },
                    child: const Text("Mostrar"),
                    style: ElevatedButton.styleFrom(
                      primary: layout.buttonSecondary.backgroundColor,
                      textStyle:
                          TextStyle(color: layout.buttonSecondary.fontColor),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
