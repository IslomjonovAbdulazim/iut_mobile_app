import 'package:get/get.dart';
import 'package:iut_mobile_app/features/additional/gpa_calculator/imports.dart';
import 'package:iut_mobile_app/features/additional/teachers/imports.dart';
import 'package:iut_mobile_app/features/leaderboard/leaderboard/imports.dart';
import 'package:iut_mobile_app/features/screens/auth/imports.dart';
import 'package:iut_mobile_app/features/screens/bnb/imports.dart';
import 'package:iut_mobile_app/features/screens/internal_error/imports.dart';
import 'package:iut_mobile_app/features/screens/offline/imports.dart';

import '../features/screens/splash/imports.dart';
import '../features/screens/upgrade/imports.dart';

part 'app_pages.dart';

class AppRoutes {
  /// #Additional
  static const String teachers = "/teachers";
  static const String gpaCalculator = "/gpa-calculator";

  /// #Leaderboard
  static const String leaderboard = "/leaderboard";
  static const String leaderboardUserDetail = "/leaderboard-user-detail";

  /// #Screen
  static const String offline = "/offline";
  static const String bnb = "/bnb";
  static const String auth = "/auth";
  static const String upgrade = "/upgrade";
  static const String internalError = "/internal-error";
  static const String splash = "/splash";
}
