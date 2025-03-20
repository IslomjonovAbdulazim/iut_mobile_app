part of 'imports.dart';

class LeaderboardController extends GetxController {
  Stream<List<LeaderboardUserModel>> connectLeaderboard() {
    return Stream.value(mockLeaderboardUsers);
    // print(ApiConstants.streamURL + ApiConstants.leaderboard);
    // final channel = WebSocketChannel.connect(
    //   Uri.parse(ApiConstants.streamURL + ApiConstants.leaderboard),
    // );
    //
    // return channel.stream.map((data) {
    //   // Assuming your data comes in as a JSON-encoded list
    //   print("-----------------------");
    //   print("\n\n\n\n\n\n");
    //   print(data);
    //   final List<dynamic> jsonList = jsonDecode(data);
    //   return jsonList
    //       .map((json) => LeaderboardUserModel.fromJson(json))
    //       .toList();
    // });
  }
}
