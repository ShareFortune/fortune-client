import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fortune_client/infra/datasources/firebase/auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth.mocks.dart';

// late FirebaseAuthDataSource dataSource;

// setUp(() {
//   dataSource = FirebaseAuthDataSourceImpl();
// });

// group("ログインができるか", () {
//   test("グーグルでログインができるか", () async {
//     await dataSource.signInWithGoogle();
//     expect(dataSource.isSignIn, true);
//   });
// });

@GenerateMocks([
  GoogleSignIn,
  FirebaseAuth,
  GoogleSignInAccount,
  GoogleSignInAuthentication,
  UserCredential,
])
void main() {
  test('Googleのサインインに成功する', () async {
    final MockGoogleSignIn mockGoogleSignIn = MockGoogleSignIn();
    final MockFirebaseAuth mockFirebaseAuth = MockFirebaseAuth();
    final MockGoogleSignInAccount mockGoogleSignInAccount =
        MockGoogleSignInAccount();
    final MockGoogleSignInAuthentication mockGoogleSignInAuthentication =
        MockGoogleSignInAuthentication();
    final MockUserCredential mockUserCredential = MockUserCredential();

    /// set mock
    when(mockGoogleSignInAuthentication.idToken).thenReturn('idToken');
    when(mockGoogleSignInAuthentication.accessToken).thenReturn('accessToke');
    when(mockGoogleSignInAccount.authentication)
        .thenAnswer((_) => Future.value(mockGoogleSignInAuthentication));
    when(mockGoogleSignIn.signIn())
        .thenAnswer((_) => Future.value(mockGoogleSignInAccount));
    when(mockFirebaseAuth.signInWithCredential(any))
        .thenAnswer((_) => Future.value(mockUserCredential));

    final FirebaseAuthDataSourceImpl googleAuthApi = FirebaseAuthDataSourceImpl(
      googleSignIn: mockGoogleSignIn,
      firebaseAuth: mockFirebaseAuth,
    );
    final response = await googleAuthApi.sigInWithGoogle();

    expect(response, mockUserCredential);
  });
  // late MockGoogleSignIn googleSignIn;
  // setUp(() {
  //   googleSignIn = MockGoogleSignIn();
  // });

  // test('should return idToken and accessToken when authenticating', () async {
  //   final signInAccount = await googleSignIn.signIn();
  //   final signInAuthentication = await signInAccount!.authentication;
  //   expect(signInAuthentication, isNotNull);
  //   expect(googleSignIn.currentUser, isNotNull);
  //   expect(signInAuthentication.accessToken, isNotNull);
  //   expect(signInAuthentication.idToken, isNotNull);
  // });

  // test('should return null when google login is cancelled by the user',
  //     () async {
  //   googleSignIn.setIsCancelled(true);
  //   final signInAccount = await googleSignIn.signIn();
  //   expect(signInAccount, isNull);
  // });

  // test(
  //     'testing google login twice, once cancelled, once not cancelled at the same test.',
  //     () async {
  //   googleSignIn.setIsCancelled(true);
  //   final signInAccount = await googleSignIn.signIn();
  //   expect(signInAccount, isNull);
  //   googleSignIn.setIsCancelled(false);
  //   final signInAccountSecondAttempt = await googleSignIn.signIn();
  //   expect(signInAccountSecondAttempt, isNotNull);
  // });
}
