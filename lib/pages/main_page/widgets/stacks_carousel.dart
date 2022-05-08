import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../uikit/ds_colors.dart';
import '../../../uikit/ds_images.dart';
import '../../../uikit/ds_styles.dart';

class StacksCarousel extends StatelessWidget {
  const StacksCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 2,
              width: 58,
              decoration: BoxDecoration(
                  color: DSColors.primaryText,
                  borderRadius: BorderRadius.circular(500)),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Stacks',
              style: DSStyles.itemLabelStyle,
            )
          ],
        ),
        Container(
          height: 182,
          width: MediaQuery.of(context).size.width - 532,
          color: DSColors.secondary,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 27.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(DSImages.kotlinSvg),
                SvgPicture.asset(DSImages.springSvg),
                SvgPicture.asset(DSImages.javaSvg),
                SvgPicture.asset(DSImages.flutterSvg),
                SvgPicture.asset(DSImages.dartSvg),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
