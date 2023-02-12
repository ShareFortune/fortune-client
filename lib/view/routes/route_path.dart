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

  /// 全ての参加ルームリスト
  static const participatingroomsAll = 'participating-rooms-all';

  /// 参加リクエスト
  static const requestConfirmation = 'request-confirmation/:id';

  /// ルーム作成
  static const createRoom = 'create-room';

  /// ルーム編集
  static const editRoom = 'edit-room';

  /// メッセージルームリスト
  static const messageRooms = 'message-rooms';

  /// メッセージルーム
  static const messageRoom = 'message-room/:id';

  /// プロフィール
  static const profile = 'profile/:id';

  /// タグ
  static const selectTag = 'select-tag';

  /// タグ作成
  static const createTag = 'create-tag';

  /// 説明入力
  static const entryDescription = 'entry-description';

  /// アカウント
  static const account = 'account';

  /// 設定
  static const setting = 'setting';

  /// ボトムシート
  /// ---------------------------

  static const bottomSheet = 'BottomSheetRouter';
  static const hostRoomActions = 'HostRoomActions';
  static const guestRoomActions = 'GuestRoomActions';

  /// プロフィール写真編集
  static const editProfilePicture = 'EditProfilePicture';

  /// ---------------------------
}
