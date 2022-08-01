
import 'package:notes_app_2/feature/domain/entities/note_entity.dart';
import 'package:notes_app_2/feature/domain/repositories/firebase_repository.dart';

class GetNotesUseCase {

  final FirebaseRepository repository;

  GetNotesUseCase({required this.repository});

  Stream<List<NoteEntity>> call(String uid){
    return repository.getNotes(uid);
  }
}