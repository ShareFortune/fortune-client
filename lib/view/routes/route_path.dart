class RoutePath {
  /// ボトムナビゲーション遷移
  static const appRouteRoot = '/';

  /// ページ遷移
  static const appRouteSignIn = '/sign-in';

  /// プロフィール作成
  static const appRouteProfileCreate = '/profile-create';

  /// ルームリスト
  static const appRouteRoomsTab = 'rooms';

  /// ルーム詳細
  /// [/rooms/:id]
  static const appRouteRoomDetail = ':id';

  /// 参加ルームリスト
  static const appRouteParticipatingRoomsTab = 'participating-rooms';

  /// 参加リクエスト
  /// [/participating-rooms/request-confirmation:id]
  static const appRouteRequestConfirmationPage = 'request-confirmation:id';

  /// ルーム作成
  static const appRouteRoomCreationTab = 'room-creation';

  /// メッセージルームリスト
  static const appRouteMessageRoomsTab = 'message-rooms';

  /// メッセージルーム
  /// [/message-rooms/:id]
  static const appRouteMessageRoom = ':id';

  /// アカウント
  static const appRouteAccountTab = 'account';

  /// プロフィール
  static const appRouteProfile = '/profile/:id';
}
