import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../uikit/ds_colors.dart';
import '../../../uikit/ds_images.dart';
import '../../../uikit/ds_styles.dart';

class SocialLeading extends StatelessWidget {
  const SocialLeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gabriel \nMonteiro',
          style: DSStyles.titleStyle,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 16,
          width: 150,
          color: DSColors.accent,
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          width: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(DSImages.iconLinkedinSvg),
              SvgPicture.asset(DSImages.iconInstagramSvg),
              SvgPicture.asset(DSImages.iconEmailSvg),
              SvgPicture.asset(DSImages.iconGithubSvg),
            ],
          ),
        )
      ],
    );
  }
}
