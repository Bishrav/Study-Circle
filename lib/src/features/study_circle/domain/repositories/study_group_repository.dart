import '../entities/study_group.dart';

/// Contract used by the domain layer to access study groups.
abstract interface class StudyGroupRepository {
  List<StudyGroup> getAll();

  StudyGroup? findById(String id);

  void save(StudyGroup group);
}
