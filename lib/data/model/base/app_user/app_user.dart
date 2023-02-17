import 'package:fortune_client/data/model/enum/auth_type.dart';

class AppUser {
  final AuthType type;
  final String? openId;
  final String? nickName;
  final String? email;
  final String? pictureUrl;
  final String? idToken;
  final String? accountId;
  final bool hasEmailAccount;
  final bool hasLineAccount;
  final bool hasGoogleAccount;
  final bool hasAppleAccount;
  final DateTime? loginAt;

  AppUser({
    required this.type,
    this.openId,
    this.nickName,
    this.email,
    this.pictureUrl,
    this.idToken,
    this.accountId,
    this.hasEmailAccount = false,
    this.hasLineAccount = false,
    this.hasGoogleAccount = false,
    this.hasAppleAccount = false,
    this.loginAt,
  });
}
