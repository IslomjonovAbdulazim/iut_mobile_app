part of 'imports.dart';

class _TeacherWidget extends StatelessWidget {
  final TeacherModel teacher;

  const _TeacherWidget({required this.teacher});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: context.cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 70,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                height: 70,
                width: 70,
                child: CachedNetworkWidget(
                  teacher.avatar,
                ),
              ),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  teacher.fullname,
                  style: context.name,
                  maxLines: 2,
                ),
                SizedBox(height: 5),
                Text(
                  teacher.email,
                  style: context.smallName,
                  textAlign: TextAlign.end,
                ),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: context.selection,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    teacher.officeHours,
                    style: context.smallName,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Spacer(),
                    Text(
                      teacher.subject,
                      style: context.smallName,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
