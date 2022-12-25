class RoutePath {
  /// ボトムナビゲーション遷移
  static const root = '/';

  /// Debug
  static const debug = '/debug';

  /// ページ遷移
  static const login = '/login';

  /// プロフィール作成
  static const createProfile = '/create-profile'; // 基本情報
  static const createProfileDetail = 'detail'; // 詳細
  static const createProfileIconImage = 'icon-image'; // 詳細
  static const createProfileSubImage = 'sub-image'; // 詳細

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

  /// プロフィール
  static const profile = '/profile/:id';

  /// アカウント
  static const account = 'account';

  /// 設定
  static const setting = 'setting';
}
