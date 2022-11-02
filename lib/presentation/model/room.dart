class RoomViewModel {
  final String hostName;
  final String roomName;
  final List<MemberViewModel> members;
  final String address;
  final String createdAt;

  RoomViewModel({
    required this.hostName,
    required this.roomName,
    required this.members,
    required this.address,
    required this.createdAt,
  });
}

class MemberViewModel {
  final String name;
  final String gender;
  final String ageGroup;
  final String imageUrl;

  MemberViewModel({
    required this.name,
    required this.gender,
    required this.ageGroup,
    required this.imageUrl,
  });
}

class AddressViewModel {
  final String country;
  final String prefecture;
  final String city;

  AddressViewModel({
    required this.country,
    required this.prefecture,
    required this.city,
  });
}
