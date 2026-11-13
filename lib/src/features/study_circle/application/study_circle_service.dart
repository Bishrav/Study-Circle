import '../domain/entities/study_group.dart';
import '../domain/repositories/study_group_repository.dart';

/// Application service that coordinates study-group use cases.
class StudyCircleService {
  const StudyCircleService(this._repository);

  final StudyGroupRepository _repository;

  List<StudyGroup> listGroups() => _repository.getAll();

  void createGroup({
    required String id,
    required String name,
    required String topic,
  }) {
    _repository.save(StudyGroup(id: id, name: name, topic: topic));
  }
}
