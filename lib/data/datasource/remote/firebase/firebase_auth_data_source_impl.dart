import 'package:firebase_auth/firebase_auth.dart';
import 'package:fortune_client/data/datasource/remote/firebase/firebase_auth_data_source.dart';

class FirebaseAuthDataSourceImpl implements FirebaseAuthDataSource {
  final _auth = FirebaseAuth.instance;

  @override
  User? get user => _auth.currentUser;

  @override
  String get firebaseId => user!.uid;

  @override
  Future<String> idToken() => user!.getIdToken();

  @override
  logout() => FirebaseAuth.instance.signOut();
}
