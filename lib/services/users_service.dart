import 'package:flutter_application_gestao/models/users.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UsersService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<UserModel> register(UserModel user) async {
    UserCredential userCredential =
        await _firebaseAuth.createUserWithEmailAndPassword(
      email: user.email!,
      password: user.password!,
    );

    UserModel registeredUser = UserModel.withoutPassword(
      id: userCredential.user!.uid,
      email: userCredential.user!.email,
    );
    return registeredUser;
  }

  Future<UserModel> login(String email, String password) async {
    UserCredential userCredential =
        await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    UserModel signedInUser = UserModel.withoutPassword(
      id: userCredential.user!.uid,
      email: userCredential.user!.email!,
    );
    return signedInUser;
  }
}