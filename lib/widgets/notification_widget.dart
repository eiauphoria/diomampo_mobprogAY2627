import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:diomampo_labact1a/constants.dart';
import 'package:diomampo_labact1a/widgets/custom_text.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
    required this.name,
    required this.post,
    required this.description,
  });

  final String name;
  final String post;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(12),
        vertical: ScreenUtil().setHeight(10),
      ),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFFE1E1E1))),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: ScreenUtil().setWidth(18),
            backgroundColor: fbLightPrimary,
            child: const Icon(Icons.person, color: Colors.white),
          ),
          SizedBox(width: ScreenUtil().setWidth(10)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: name,
                  fontSize: ScreenUtil().setSp(14),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  text: 'Posted: $post',
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.black87,
                ),
                CustomText(
                  text: description,
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          const Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}
