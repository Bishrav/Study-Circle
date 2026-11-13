import 'package:study_circle/study_circle.dart';
import 'package:test/test.dart';

void main() {
  group('StudyCircleService', () {
    late InMemoryStudyGroupRepository repository;
    late StudyCircleService service;

    setUp(() {
      repository = InMemoryStudyGroupRepository();
      service = StudyCircleService(repository);
    });

    test('creates and lists a study group', () {
      service.createGroup(
        id: 'group-1',
        name: 'Dart Beginners',
        topic: 'Dart fundamentals',
      );

      expect(service.listGroups(), hasLength(1));
      expect(service.listGroups().single.name, 'Dart Beginners');
    });
  });
}
