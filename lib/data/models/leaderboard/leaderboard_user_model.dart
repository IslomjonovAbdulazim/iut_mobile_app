import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard_user_model.freezed.dart';
part 'leaderboard_user_model.g.dart';

@freezed
class LeaderboardUserModel with _$LeaderboardUserModel {
  const factory LeaderboardUserModel({
    required String id,
    required String fullname,
    required double gpa,
    String? avatar,
    required List<SubjectModel> subjects,
    required int rank,
  }) = _LeaderboardUserModel;

  factory LeaderboardUserModel.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardUserModelFromJson(json);
}

@freezed
class SubjectModel with _$SubjectModel {
  const factory SubjectModel({
    required String name,
    required double percentage,
    required int rank,
  }) = _SubjectModel;

  factory SubjectModel.fromJson(Map<String, dynamic> json) =>
      _$SubjectModelFromJson(json);
}

List<LeaderboardUserModel> mockLeaderboardUsers = [
  LeaderboardUserModel(
    id: "u241001",
    fullname: "Aliyor Karimov",
    gpa: 3.85,
    avatar: "https://randomuser.me/api/portraits/men/1.jpg",
    rank: 3,
    subjects: [
      SubjectModel(name: "Matematika", percentage: 95.3, rank: 1),
      SubjectModel(name: "Fizika", percentage: 88.7, rank: 2),
      SubjectModel(name: "Ingliz tili", percentage: 92.1, rank: 1),
    ],
  ),
  LeaderboardUserModel(
    id: "u241002",
    fullname: "Dilrabo Ismoilova",
    gpa: 3.72,
    avatar: "https://randomuser.me/api/portraits/women/2.jpg",
    rank: 6,
    subjects: [
      SubjectModel(name: "Biologiya", percentage: 91.4, rank: 1),
      SubjectModel(name: "Kimyo", percentage: 87.9, rank: 3),
      SubjectModel(name: "Ona tili", percentage: 95.2, rank: 1),
    ],
  ),
  LeaderboardUserModel(
    id: "u241003",
    fullname: "Javohir Tursunov",
    gpa: 3.68,
    avatar: "https://randomuser.me/api/portraits/men/3.jpg",
    rank: 7,
    subjects: [
      SubjectModel(name: "Tarix", percentage: 89.6, rank: 2),
      SubjectModel(name: "Informatika", percentage: 94.5, rank: 1),
      SubjectModel(name: "Geografiya", percentage: 90.8, rank: 2),
    ],
  ),
  LeaderboardUserModel(
    id: "u241004",
    fullname: "Madina Qodirova",
    gpa: 3.90,
    avatar: "https://randomuser.me/api/portraits/women/4.jpg",
    rank: 1,
    subjects: [
      SubjectModel(name: "Matematika", percentage: 97.2, rank: 1),
      SubjectModel(name: "Fizika", percentage: 90.4, rank: 2),
      SubjectModel(name: "Ingliz tili", percentage: 93.6, rank: 1),
    ],
  ),
  LeaderboardUserModel(
    id: "u241005",
    fullname: "Shahzod Axmedov",
    gpa: 3.55,
    avatar: "https://randomuser.me/api/portraits/men/5.jpg",
    rank: 10,
    subjects: [
      SubjectModel(name: "Tarix", percentage: 85.9, rank: 3),
      SubjectModel(name: "Kimyo", percentage: 80.2, rank: 4),
      SubjectModel(name: "Biologiya", percentage: 88.1, rank: 2),
    ],
  ),
  LeaderboardUserModel(
    id: "u241006",
    fullname: "Nodira Rustamova",
    gpa: 3.79,
    avatar: "https://randomuser.me/api/portraits/women/6.jpg",
    rank: 4,
    subjects: [
      SubjectModel(name: "Matematika", percentage: 96.8, rank: 1),
      SubjectModel(name: "Informatika", percentage: 91.3, rank: 2),
      SubjectModel(name: "Ona tili", percentage: 97.0, rank: 1),
    ],
  ),
  LeaderboardUserModel(
    id: "u241007",
    fullname: "Bekzod Yuldashev",
    gpa: 3.63,
    avatar: "https://randomuser.me/api/portraits/men/7.jpg",
    rank: 8,
    subjects: [
      SubjectModel(name: "Geografiya", percentage: 89.5, rank: 2),
      SubjectModel(name: "Kimyo", percentage: 85.3, rank: 3),
      SubjectModel(name: "Informatika", percentage: 92.7, rank: 2),
    ],
  ),
  LeaderboardUserModel(
    id: "u241008",
    fullname: "Laylo Xolmatova",
    gpa: 3.88,
    avatar: "https://randomuser.me/api/portraits/women/8.jpg",
    rank: 2,
    subjects: [
      SubjectModel(name: "Tarix", percentage: 94.1, rank: 1),
      SubjectModel(name: "Matematika", percentage: 98.2, rank: 1),
      SubjectModel(name: "Biologiya", percentage: 92.3, rank: 2),
    ],
  ),
  LeaderboardUserModel(
    id: "u241009",
    fullname: "Rustam Zokirov",
    gpa: 3.47,
    avatar: "https://randomuser.me/api/portraits/men/9.jpg",
    rank: 9,
    subjects: [
      SubjectModel(name: "Informatika", percentage: 88.6, rank: 3),
      SubjectModel(name: "Fizika", percentage: 85.7, rank: 4),
      SubjectModel(name: "Ona tili", percentage: 90.2, rank: 2),
    ],
  ),
  LeaderboardUserModel(
    id: "u241010",
    fullname: "Zarnigor Abdurahmonova",
    gpa: 3.81,
    avatar: "https://randomuser.me/api/portraits/women/10.jpg",
    rank: 5,
    subjects: [
      SubjectModel(name: "Kimyo", percentage: 92.5, rank: 1),
      SubjectModel(name: "Geografiya", percentage: 87.8, rank: 3),
      SubjectModel(name: "Ingliz tili", percentage: 95.1, rank: 1),
    ],
  ),
];