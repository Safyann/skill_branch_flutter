import 'package:FlutterGalleryApp/res/colors.dart';
import 'package:FlutterGalleryApp/res/res.dart';
import 'package:FlutterGalleryApp/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  Feed({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            _buildItem(),
            Divider(
              thickness: 2,
              color: AppColors.mercury,
            )
          ],
        );
      }),
    );
  }

  Widget _buildItem() {
    return Column(
      children: <Widget>[
        Photo(
          photoLink:
              'https://www.worldofroads.com/wp-content/uploads/2018/10/HK8A2092-2.jpg',
        ),
        _buildPhotoMeta()
      ],
    );
  }

  Widget _buildPhotoMeta() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              UserAvatar(
                  'https://www.worldofroads.com/wp-content/uploads/2018/10/HK8A2092-2.jpg'),
              SizedBox(
                width: 6,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'dfsdf sdfsdf',
                    style: AppStyles.h2Black,
                  ),
                  Text('@asdasd',
                      style: AppStyles.h5Black.copyWith(
                        color: AppColors.manatee,
                      )),
                ],
              )
            ],
          ),
          LikeBtn(10, true),
        ],
      ),
    );
  }
}
