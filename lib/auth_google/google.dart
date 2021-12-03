import 'package:carrers/main.dart';
import 'package:carrers/models/user_model.dart';
import 'package:carrers/providers/user_provider.dart';
import 'package:carrers/secure_storage/session.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthModel {
  Future handleGoogleLogin() async {
    print('GOOGLE_LOGIN_BTN');
    UserLoged currentUser = getIt.get<UserLoged>();
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;

    CollectionReference users = FirebaseFirestore.instance.collection('users');

    List<QueryDocumentSnapshot<dynamic>> snap = await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: googleSignInAccount.email)
        .limit(1)
        .get()
        .then((snapshot) => snapshot.docs);

    if (snap.isNotEmpty && snap[0].get('career') != null) {
      Session().set(
          'user',
          User(
            userId: googleSignInAccount.id.toString(),
            name: googleSignInAccount.displayName.toString(),
            email: googleSignInAccount.email,
            career: snap[0].get('career'),
          ));
      return null;
    }

    currentUser.setUser = User(
      userId: googleSignInAccount.id.toString(),
      name: googleSignInAccount.displayName.toString(),
      email: googleSignInAccount.email,
    );

    return null;
  }
}
