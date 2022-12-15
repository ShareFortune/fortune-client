class RoutePath {
  /// ボトムナビゲーション遷移
  static const root = '/';

  /// ページ遷移
  static const signIn = '/sign-in';

  /// プロフィール作成
  static const createProfile = '/create-profile';

  /// ルームリスト
  static const rooms = 'rooms';

  /// ルーム詳細
  /// [/rooms/:id]
  static const roomDetail = ':id';

  /// 参加ルームリスト
  static const participatingRooms = 'participating-rooms';

  /// 参加リクエスト
  /// [/participating-rooms/request-confirmation:id]
  static const requestConfirmation = 'request-confirmation:id';

  /// ルーム作成
  static const createRoom = 'create-room';

  /// メッセージルームリスト
  static const messageRooms = 'message-rooms';

  /// メッセージルーム
  /// [/message-rooms/:id]
  static const messageRoom = ':id';

  /// アカウント
  static const account = 'account';

  /// プロフィール
  static const profile = '/profile/:id';
}
