import 'package:carrers/models/user_model.dart';

class UserLoged {
  User _userLoged = User();

  //From here the category selected is set on the app , and used as reference.

  set setUser(User usr) {
    _userLoged = usr;
  }

  get user {
    return _userLoged;
  }
}
