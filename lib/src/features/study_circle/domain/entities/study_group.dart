/// A group of learners studying toward a shared goal.
class StudyGroup {
  const StudyGroup({
    required this.id,
    required this.name,
    required this.topic,
    this.memberCount = 0,
  });

  final String id;
  final String name;
  final String topic;
  final int memberCount;

  StudyGroup copyWith({String? name, String? topic, int? memberCount}) {
    return StudyGroup(
      id: id,
      name: name ?? this.name,
      topic: topic ?? this.topic,
      memberCount: memberCount ?? this.memberCount,
    );
  }
}
