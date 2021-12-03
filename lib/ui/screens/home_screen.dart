import 'package:carrers/constants/constants.dart';
import 'package:carrers/models/user_model.dart';
import 'package:carrers/secure_storage/session.dart';
import 'package:carrers/ui/widgets/iq_widget.dart';
import 'package:carrers/ui/widgets/isc_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:flutter_conditional_rendering/conditional_switch.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Layout layout;
  late User user;
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    user = ModalRoute.of(context)?.settings.arguments as User;
    layout = Layout(user.career!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: layout.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            ConditionalSwitch.single<String>(
              context: context,
              valueBuilder: (BuildContext context) => user.career!,
              caseBuilders: {
                'ISC': (BuildContext context) => ISC(),
                'IQ': (BuildContext context) => IQ(),
              },
              fallbackBuilder: (BuildContext context) => Text('None of the cases matched!'),
            ),
          ],
        ),
      ),
    );
  }
}