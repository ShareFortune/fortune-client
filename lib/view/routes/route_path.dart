enum RoutePath {
  /// Launch
  launch('/launch'),

  /// Debug
  debug('/debug'),

  /// Update
  update('/update'),

  /// Auth
  login('/login'),

  /// Home
  home('/home'),

  /// Profile
  userInfoInput('/userInfoInput'),
  profileInput('/profileInput'),
  profileEdit('/profileEdit'),
  profile('/profile'),

  /// My Page
  my('/my'),

  /// Room
  room('/room'),
  roomInput('/roomInput'),
  roomDetail('/roomDetail'),

  /// Participating Room
  participatingRoom('/participatingRoom'),

  /// Join Request
  joinRequestsConfirm('/joinRequestsConfirm'),

  /// Message
  messageRoom('/messageRoom'),
  messageRoomList('/messageRoomList'),

  /// Tag
  tagInput('/tagInput'),
  searchTag('/searchTag'),

  /// Setting
  setting('/setting'),
  settingAccount('/settingAccount'),
  settingNotification('/settingNotification'),
  settingPrivacy('/settingPrivacy'),
  settingTerms('/settingTerms'),
  settingHelp('/settingHelp'),
  settingAbout('/settingAbout'),

  /// Input
  inputText('/inputText'),
  inputLongText('/inputLongText'),

  /// Error
  error('/error'),

  /// Unknown
  unknown('/unknown');

  final String name;
  const RoutePath(this.name);

  factory RoutePath.from(String? name) {
    return values.firstWhere((e) => e.name == name, orElse: () => unknown);
  }
}
