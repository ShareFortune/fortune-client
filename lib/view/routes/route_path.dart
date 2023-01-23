class RoutePath {
  static const root = '/';

  /// Debug
  static const debug = 'debug';

  /// ログイン
  static const login = 'login';

  /// プロフィール作成
  static const createProfileBasic = 'create-profile-basic'; // 基本情報
  static const createProfileDetail = 'create-profile-detail'; // 詳細
  static const createProfileIconImage = 'create-profile-icon-image'; // アイコン
  static const createProfileSubImage = 'create-profile-sub-image'; // サブイメージ

  static const updateProfile = 'update-profile';

  static const enterAddress = 'enter-address';

  /// ルームリスト
  static const rooms = 'rooms';

  /// ルーム詳細
  static const roomDetail = 'room/:roomId';

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

  /// タグ
  static const tagSelection = 'select-tag';

  /// タグ作成
  static const tagCreation = 'create-tag';

  /// 説明入力
  static const entryDescription = 'entry-description';

  /// アカウント
  static const account = 'account';

  /// 設定
  static const setting = 'setting';
}
