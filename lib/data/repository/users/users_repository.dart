abstract class UsersRepository {
  bool isCreated();

  Future<bool> create(
    String name,
    String birthday,
  );
}
