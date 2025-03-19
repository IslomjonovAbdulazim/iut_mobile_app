import 'package:get/get.dart';
import 'package:iut_mobile_app/features/leaderboard/leaderboard/imports.dart';
import 'package:iut_mobile_app/features/screens/auth/imports.dart';
import 'package:iut_mobile_app/features/screens/bnb/imports.dart';
import 'package:iut_mobile_app/features/screens/internal_error/imports.dart';
import 'package:iut_mobile_app/features/screens/offline/imports.dart';

import '../features/screens/splash/imports.dart';
import '../features/screens/upgrade/imports.dart';

part 'app_pages.dart';

class AppRoutes {
  /// #Leaderboard
  static const String leaderboard = "/leaderboard";

  /// #Screen
  static const String offline = "/offline";
  static const String bnb = "/bnb";
  static const String auth = "/auth";
  static const String upgrade = "/upgrade";
  static const String internalError = "/internal_error";
  static const String splash = "/splash";
}
