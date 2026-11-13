import 'package:study_circle/study_circle.dart';

void main() {
  final service = StudyCircleService(InMemoryStudyGroupRepository());
  service.createGroup(
    id: 'dart-101',
    name: 'Dart 101',
    topic: 'Clean architecture',
  );

  for (final group in service.listGroups()) {
    print('${group.name}: ${group.topic}');
  }
}
