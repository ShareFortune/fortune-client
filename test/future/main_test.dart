import 'package:flutter_test/flutter_test.dart';
import 'package:fortune_client/data/datasource/remote/firebase/apple_sign_in_data_source.dart';

void main() {
  late final AppleSignInDataSource appleSignInDataSource;

  setUp(() {
    appleSignInDataSource = AppleSignInDataSource();
  });

  test("Apple サインイン", () {
    final user = appleSignInDataSource.login();
    print(user);
  });
}
