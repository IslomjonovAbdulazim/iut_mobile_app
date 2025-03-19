part of 'imports.dart';


// class _UserItem extends StatelessWidget {
//   final LeaderboardUserModel user;
//
//   const _UserItem({required this.user});
//
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoButton(
//       padding: EdgeInsets.zero,
//       onPressed: () {
//         Get.toNamed(AppRoutes.leaderboardUserDetail, arguments: user);
//       },
//       child: Container(
//         margin: const EdgeInsets.symmetric(vertical: 6),
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
//         decoration: BoxDecoration(
//           color: context.cardColor,
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: Row(
//           children: [
//             SizedBox(
//               width: 30,
//               child: Text(
//                 "${user.place}",
//                 style: context.number,
//               ),
//             ),
//             ClipRRect(
//               borderRadius: BorderRadius.circular(100),
//               child: user.avatar == null
//                   ? Container(
//                 height: 30,
//                 width: 30,
//                 color: Colors.red,
//               )
//                   : CachedNetworkWidget(
//                 user.avatar!,
//                 height: 40,
//                 width: 40,
//               ),
//             ),
//             const SizedBox(width: 10),
//             Text(
//               user.firstName,
//               style: context.name,
//             ),
//             const SizedBox(width: 3),
//             Text(
//               user.lastName,
//               style: context.name,
//             ),
//             const Spacer(),
//             Text(
//               "${user.rating} pts",
//               style: context.number,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
