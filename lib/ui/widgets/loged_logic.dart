import 'package:carrers/main.dart';
import 'package:carrers/models/user_model.dart';
import 'package:carrers/providers/user_provider.dart';
import 'package:carrers/secure_storage/session.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CreateUser {
  Future<User> handleCreate(String career) async {
    print('GOOGLE_LOGIN_BTN');
    var userNotRegistered = getIt.get<UserLoged>();
    User userRegister = User(
        userId: userNotRegistered.user.userId,
        name: userNotRegistered.user.name,
        email: userNotRegistered.user.email,
        career: career);
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    users
        .add({
          'id': userRegister.userId, // John Doe
          'name': userRegister.name,
          'email': userRegister.email,
          'career': career // 42
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
    // users.doc()
    await Session().set('user', userRegister);
    return userRegister;
    // users.doc()
  }
}
