class RoutePath {
  static const root = '/';

  /// ボトムナビゲーション遷移
  static const tabs = '/tab';

  /// Debug
  static const debug = '/debug';

  /// ページ遷移
  static const login = '/login';

  /// プロフィール作成
  static const createProfile = 'create-profile';
  static const createProfileBasic = 'basic'; // 基本情報
  static const createProfileDetail = 'detail'; // 詳細
  static const createProfileIconImage = 'icon-image'; // 詳細
  static const createProfileSubImage = 'sub-image'; // 詳細

  /// ルームリスト
  static const rooms = 'rooms';

  /// ルーム詳細
  /// [/room:id]
  static const roomDetail = 'room/:id';

  /// 参加ルームリスト
  static const participatingRooms = 'participating-rooms';

  /// 参加リクエスト
  /// [/participating-rooms/request-confirmation:id]
  static const requestConfirmation = 'request-confirmation/:id';

  /// ルーム作成
  static const createRoom = 'create-room';

  /// メッセージルームリスト
  static const messageRooms = 'message-rooms';

  /// メッセージルーム
  /// [/message-rooms/:id]
  static const messageRoom = 'message-room/:id';

  /// プロフィール
  static const profile = 'profile/:id';

  /// アカウント
  static const account = 'account';

  /// 設定
  static const setting = 'setting';
}
