import '../../domain/entities/study_group.dart';
import '../../domain/repositories/study_group_repository.dart';

/// In-memory data source suitable for local development and tests.
class InMemoryStudyGroupRepository implements StudyGroupRepository {
  final Map<String, StudyGroup> _groups = {};

  @override
  List<StudyGroup> getAll() => List.unmodifiable(_groups.values);

  @override
  StudyGroup? findById(String id) => _groups[id];

  @override
  void save(StudyGroup group) {
    _groups[group.id] = group;
  }
}
