// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class RoomFetchPresenter {
//   final Ref ref;

//   RoomFetchPresenter(
//     this.ref,
//   );

//   Future<DiaryModel> create(DiaryModel diary) async {
//     final entity = await _usecase.create(diary.toEntity());
//     return DiaryModel.fromEntity(entity);
//   }

//   Future<DiaryModel> update(DiaryModel diary) async {
//     final entity = await _usecase.update(diary.toEntity());
//     return DiaryModel.fromEntity(entity);
//   }

//   fetch(int id) async {}

//   Future<List<DiaryModel>> fetchAll() async {
//     final diaryEntities = await _usecase.fetchAll();
//     return diaryEntities.map((e) => DiaryModel.fromEntity(e)).toList();
//   }
// }
