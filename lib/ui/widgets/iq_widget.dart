import 'package:carrers/constants/constants.dart';
import 'package:carrers/models/user_model.dart';
import 'package:flutter/material.dart';

class IQ extends StatefulWidget {
  final User user;
  const IQ(this.user, {Key? key}) : super(key: key);

  @override
  _IQState createState() => _IQState();
}

class _IQState extends State<IQ> {
  String career = "";
  String fieldOneValue = "";
  String fieldTwoValue = "";
  String labelValue = "";
  late Layout layout;
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();

  @override
  void initState() {
    super.initState();
    layout = Layout(widget.user.career!);
  }

  showModal(String text) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Center(
          child: Text(text),
        ),
      ),
    );
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
              height: 85,
            ),
            Flexible(
                flex: 2,
                child: TextField(
                  controller: _fieldOne,
                  onChanged: (value) {
                    setState(() {
                      fieldOneValue = value;
                    });
                  },
                )),
            Flexible(
                flex: 1,
                child: TextField(
                  controller: _fieldTwo,
                  onChanged: (value) {
                    setState(() {
                      labelValue = _fieldTwo.text;
                    });
                  },
                )),
            Flexible(
                flex: 1,
                child: Text(
                  labelValue,
                  style: const TextStyle(fontSize: 20),
                )),
            Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () =>
                          {showModal("Ing.Quimica " + _fieldOne.text)},
                      child: const Text("IQ"),
                      style: ElevatedButton.styleFrom(
                        primary: layout.buttonPrimary.backgroundColor,
                        textStyle:
                            TextStyle(color: layout.buttonPrimary.fontColor),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
