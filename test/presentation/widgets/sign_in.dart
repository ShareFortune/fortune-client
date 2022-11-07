// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:fortune_client/presentation/view/pages/auth/sign_in/containers/page.dart';




// // - [ ]  ログイン画面
// //     - [ ]  ログイン画面が表示されているか
// //     - [ ]  ログインボタンを押したら
// //         - [ ]  初回ログインならマイページ作成画面に遷移するか
// //         - [ ]  初回ログインでないならイベント画面に遷移するか

// void main() {
//   group("ログインボタンクリック処理", () {
//     const btnText = "Sign in with Apple";

//     testWidgets('ログインボタンが存在するか', (WidgetTester tester) async {
//       await tester.pumpWidget(const MaterialApp(
//         home: SignInPageContainer(),
//       ));

//       expect(find.text(btnText), findsOneWidget);
//     });

//     testWidgets('初回ログインならマイページ作成画面に遷移する', (WidgetTester tester) async {
//       await tester.pumpWidget(const MaterialApp(
//         home: SignInPageContainer(),
//       ));

//       await tester.tap(find.text(btnText));
//       await tester.pump();
//     });

//     // testWidgets('初回ログインならマイページ作成画面に遷移する', (WidgetTester tester) async {
//     //   // expect();
//     // });
//   });
// }
