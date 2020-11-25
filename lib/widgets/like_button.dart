import 'package:FlutterGalleryApp/res/app_icons.dart';
import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  LikeButton({Key key, bool isLiked, int likeCount}) : super(key: key);

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked;
  int likeCount;

  @override
  void initState() {
    super.initState();
    isLiked = isLiked;
    likeCount = likeCount;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        setState(() {
          isLiked = !isLiked;
          isLiked ? likeCount++ : likeCount--;
        });
      },
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            children: <Widget>[
              Icon(isLiked ? AppIcons.like_fill : AppIcons.like),
              SizedBox(width: 4),
              Text(likeCount.toString())
            ],
          ),
        ),
      ),
    );
  }
}
