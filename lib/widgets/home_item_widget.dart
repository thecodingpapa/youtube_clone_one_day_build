import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:youtubecloneonedaybuild/constants/common_size.dart';
import 'package:youtubecloneonedaybuild/constants/size.dart';

class HomeItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CachedNetworkImage(
          imageUrl: 'https://picsum.photos/192/108',
          fit: BoxFit.fitWidth,
          width: size.width,
          height: size.width * 108 / 192,
          placeholder: (context, url) {
            return Container(
              width: size.width,
              height: size.width * 108 / 192,
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(common_s_gap),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipOval(
                child: CachedNetworkImage(
                  imageUrl:
                      'https://api.adorable.io/avatars/30/abott@adorable.png',
                  width: 40,
                  height: 40,
                ),
              ),
              SizedBox(
                width: common_s_gap,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Just add your desired image size (width & height) after our URL',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Text(
                    'The Coding Papa · 3M views · 2 mins ago',
                    style: TextStyle(fontSize: 12, color: Colors.white60),
                  ),
                ],
              )),
              SizedBox(
                width: common_s_gap,
              ),
              Icon(
                Icons.more_vert,
                color: Colors.white60,
                size: 22,
              )
            ],
          ),
        )
      ],
    );
  }
}
