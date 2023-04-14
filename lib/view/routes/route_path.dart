enum RoutePath {
  /// Launch
  launch('/launch'),

  /// Debug
  debug('/debug'),

  /// Auth
  login('/login'),

  /// Home
  home('/home'),

  /// Profile
  profileInput('/profileInput'),
  profileEdit('/profileEdit'),
  profile('/profile'),

  /// My Page
  my('/my'),

  /// Room
  room('/room'),
  roomInput('/roomInput'),
  roomEdit('/roomEdit'),
  roomDetail('/roomDetail'),

  /// Participating Room
  participatingRoom('/participatingRoom'),
  participatingRoomAll('/participatingRoomAll'),

  /// Message
  message('/message'),
  messageRoom('/messageRoom'),

  /// Tag
  tag('/tag'),
  tagInput('/tagInput'),

  /// Setting
  setting('/setting'),
  settingAccount('/settingAccount'),
  settingNotification('/settingNotification'),
  settingPrivacy('/settingPrivacy'),
  settingTerms('/settingTerms'),
  settingHelp('/settingHelp'),
  settingAbout('/settingAbout'),

  /// Search
  searchRoom('/searchRoom'),
  searchTag('/searchTag'),
  searchAddress('/searchAddress'),

  /// Error
  error('/error'),

  /// Unknown
  unknown(null);

  final String? name;
  const RoutePath(this.name);

  factory RoutePath.from(String? name) {
    return values.firstWhere((e) => e.name == name, orElse: () => unknown);
  }
}
