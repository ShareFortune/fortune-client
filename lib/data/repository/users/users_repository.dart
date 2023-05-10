abstract class UsersRepository {
  String get userId;
  bool isCreated();

  Future<bool> create(
    String name,
    String birthday,
  );
}
