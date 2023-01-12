class RoutePath {
  static const root = '/';

  /// Debug
  static const debug = 'debug';

  /// ページ遷移
  static const login = 'login';

  /// プロフィール作成
  static const createProfileBasic = 'create-profile-basic'; // 基本情報
  static const createProfileDetail = 'create-profile-detail'; // 詳細
  static const createProfileIconImage = 'create-profile-icon-image'; // アイコン
  static const createProfileSubImage = 'create-profile-sub-image'; // サブイメージ

  /// ルームリスト
  static const rooms = 'rooms';

  /// ルーム詳細
  static const roomDetail = 'room/:id';

  /// 参加ルームリスト
  static const participatingRooms = 'participating-rooms';

  /// 参加リクエスト
  static const requestConfirmation = 'request-confirmation/:id';

  /// ルーム作成
  static const createRoom = 'create-room';

  /// メッセージルームリスト
  static const messageRooms = 'message-rooms';

  /// メッセージルーム
  static const messageRoom = 'message-room/:id';

  /// プロフィール
  static const profile = 'profile/:id';

  /// 検索
  static const tags = 'tags';

  /// アカウント
  static const account = 'account';

  /// 設定
  static const setting = 'setting';
}
