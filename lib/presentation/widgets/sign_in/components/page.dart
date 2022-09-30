import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignInPageComponent extends StatelessWidget {
  const SignInPageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            // padding: const EdgeInsets.all(24),
            padding: const EdgeInsets.fromLTRB(50, 54, 50, 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                // // メールアドレス入力
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'メールアドレス',
                    hintStyle: TextStyle(color: Colors.black),
                    // floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding: EdgeInsets.only(
                        left: 10, top: 20, bottom: 15, right: 10),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                  ),
                ),

                const SizedBox(height: 10),

                // パスワード入力
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'パウワード',
                    hintStyle: TextStyle(color: Colors.black),
                    // floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding: EdgeInsets.only(
                        left: 10, top: 20, bottom: 15, right: 10),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                  ),
                ),

                const SizedBox(height: 10),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('ログイン'),
                    onPressed: () async {},
                  ),
                ),
                Center(
                    child: Image.asset(
                        'assets/images/30FD2538-40E9-4A17-BDF9-CE64685BFCB4.png')),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (() {}),
                    child: const Text('登録せず利用'),
                  ),
                ),

                const SizedBox(height: 30),

                Row(children: <Widget>[
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                        child: const Divider(color: Colors.black)),
                  ),
                  const Text('または'),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                        child: const Divider(color: Colors.black)),
                  ),
                ]),

                const SizedBox(height: 10),

                SignInButton(
                  Buttons.GoogleDark,
                  onPressed: () {},
                ),
                const Divider(),
                SignInButton(
                  Buttons.Apple,
                  onPressed: () {},
                ),

                const Divider(),

                const SizedBox(height: 30),

                RichText(
                    text: TextSpan(children: [
                  const TextSpan(
                      text: '登録すると', style: TextStyle(color: Colors.black)),
                  TextSpan(
                      text: 'プライバシーポリシー',
                      style: const TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()..onTap = () {}),
                  const TextSpan(
                      text: 'に同意したものとみなされます。',
                      style: TextStyle(color: Colors.black))
                ])),

                const SizedBox(height: 30),

                RichText(
                    text: TextSpan(children: [
                  const TextSpan(
                      text: 'アカウントを持ってない場合は',
                      style: TextStyle(color: Colors.black)),
                  TextSpan(
                      text: 'こちらから',
                      style: const TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()..onTap = () {}),
                ])),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
