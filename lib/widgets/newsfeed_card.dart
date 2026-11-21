import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:diomampo_labact1a/widgets/custom_text.dart';

class NewsfeedCard extends StatefulWidget {
  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    required this.numOfLikes,
    this.hasImage = false,
    this.imagePath = '',
    this.profileImagePath = 'assets/images/profile.png',
  });

  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final bool hasImage;
  final String imagePath;
  final String profileImagePath;

  @override
  State<NewsfeedCard> createState() => _NewsfeedCardState();
}

class _NewsfeedCardState extends State<NewsfeedCard> {
  bool _isLiked = false;
  bool _showCommentField = false;

  @override
  Widget build(BuildContext context) {
    final int likeCount = widget.numOfLikes + (_isLiked ? 1 : 0);

    return Card(
      margin: EdgeInsets.zero,
      elevation: 1,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(12),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: ScreenUtil().setWidth(20),
                    backgroundImage: AssetImage(widget.profileImagePath),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(8)),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: widget.userName,
                          fontSize: ScreenUtil().setSp(14),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        Row(
                          children: [
                            CustomText(
                              text: widget.date,
                              fontSize: ScreenUtil().setSp(12),
                              color: Colors.grey,
                            ),
                            SizedBox(width: ScreenUtil().setWidth(3)),
                            const Icon(
                              Icons.public,
                              color: Colors.grey,
                              size: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.more_horiz),
                ],
              ),
            ),
            if (widget.postContent.isNotEmpty) ...[
              SizedBox(height: ScreenUtil().setHeight(8)),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(12),
                ),
                child: CustomText(
                  text: widget.postContent,
                  fontSize: ScreenUtil().setSp(15),
                  color: Colors.black,
                ),
              ),
            ],
            if (widget.hasImage && widget.imagePath.isNotEmpty) ...[
              SizedBox(height: ScreenUtil().setHeight(8)),
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  widget.imagePath,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
            SizedBox(height: ScreenUtil().setHeight(8)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: ScreenUtil().setWidth(14),
                        height: ScreenUtil().setWidth(14),
                        decoration: const BoxDecoration(
                          color: Color(0xFF1877F2),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.thumb_up,
                          color: Colors.white,
                          size: 9,
                        ),
                      ),
                      SizedBox(width: ScreenUtil().setWidth(4)),
                      CustomText(
                        text: likeCount.toString(),
                        fontSize: ScreenUtil().setSp(10),
                        color: Colors.grey,
                      ),
                      const Spacer(),
                      CustomText(
                        text: 'Comment',
                        fontSize: ScreenUtil().setSp(10),
                        color: Colors.grey,
                      ),
                      SizedBox(width: ScreenUtil().setWidth(24)),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.share, color: Colors.grey, size: 12),
                          SizedBox(width: ScreenUtil().setWidth(3)),
                          CustomText(
                            text: 'Share',
                            fontSize: ScreenUtil().setSp(10),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(6)),
            const Divider(height: 1, thickness: 0.7, color: Color(0xFFE1E1E1)),
            SizedBox(
              height: ScreenUtil().setHeight(40),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _isLiked = !_isLiked;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            _isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
                            size: 17,
                            color: _isLiked
                                ? const Color(0xFF1877F2)
                                : Colors.grey,
                          ),
                          SizedBox(width: ScreenUtil().setWidth(6)),
                          CustomText(
                            text: 'Like',
                            fontSize: ScreenUtil().setSp(13),
                            color: _isLiked
                                ? const Color(0xFF1877F2)
                                : Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _showCommentField = true;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.mode_comment_outlined,
                            size: 17,
                            color: Colors.grey,
                          ),
                          SizedBox(width: ScreenUtil().setWidth(6)),
                          CustomText(
                            text: 'Comment',
                            fontSize: ScreenUtil().setSp(13),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.share_outlined,
                            size: 17,
                            color: Colors.grey,
                          ),
                          SizedBox(width: ScreenUtil().setWidth(6)),
                          CustomText(
                            text: 'Share',
                            fontSize: ScreenUtil().setSp(13),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 1, thickness: 0.7, color: Color(0xFFE1E1E1)),
            Padding(
              padding: EdgeInsets.fromLTRB(
                ScreenUtil().setWidth(12),
                ScreenUtil().setHeight(6),
                ScreenUtil().setWidth(12),
                0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(
                    text: 'Most relevant',
                    fontSize: ScreenUtil().setSp(12),
                    color: const Color(0xFF4E4E4E),
                  ),
                  const SizedBox(width: 2),
                  const Icon(
                    Icons.arrow_drop_down,
                    size: 18,
                    color: Color(0xFF4E4E4E),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(12),
                vertical: ScreenUtil().setHeight(6),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: ScreenUtil().setWidth(14),
                    backgroundImage: AssetImage(widget.profileImagePath),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(8)),
                  Expanded(
                    child: SizedBox(
                      height: ScreenUtil().setHeight(32),
                      child: TextField(
                        autofocus: _showCommentField,
                        style: TextStyle(fontSize: ScreenUtil().setSp(12)),
                        decoration: InputDecoration(
                          hintText: 'Write a comment...',
                          hintStyle: TextStyle(
                            fontSize: ScreenUtil().setSp(12),
                            color: Colors.grey,
                          ),
                          filled: true,
                          fillColor: const Color(0xFFF1F2F5),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: ScreenUtil().setWidth(12),
                            vertical: 0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(8)),
                  const Icon(
                    Icons.emoji_emotions_outlined,
                    size: 17,
                    color: Colors.grey,
                  ),
                  SizedBox(width: ScreenUtil().setWidth(7)),
                  const Icon(
                    Icons.camera_alt_outlined,
                    size: 17,
                    color: Colors.grey,
                  ),
                  SizedBox(width: ScreenUtil().setWidth(7)),
                  const Icon(
                    Icons.gif_box_outlined,
                    size: 17,
                    color: Colors.grey,
                  ),
                  SizedBox(width: ScreenUtil().setWidth(7)),
                  const Icon(
                    Icons.sticky_note_2_outlined,
                    size: 17,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(12),
              ),
              child: CustomText(
                text: 'View comments',
                fontSize: ScreenUtil().setSp(12),
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(6)),
          ],
        ),
      ),
    );
  }
}
