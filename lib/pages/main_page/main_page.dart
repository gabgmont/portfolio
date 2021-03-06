import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/pages/main_page/widgets/animated_stack.dart';
import 'package:portfolio/pages/main_page/widgets/item_button.dart';
import 'package:portfolio/pages/main_page/widgets/text_item.dart';
import 'package:portfolio/uikit/ds_colors.dart';
import 'package:portfolio/uikit/ds_images.dart';
import 'package:portfolio/uikit/ds_styles.dart';

import 'widgets/social_leading.dart';
import 'widgets/stacks_carousel.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [DSColors.primary, DSColors.secondary],
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SocialLeading(),
                      SizedBox(
                        width: 182,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 80),
                        child: TextItem(
                          label: 'Intro',
                          body: 'Mobile and Backend developer from Brazil.\n'
                              'Currently working with Flutter, '
                              '\nKotlin and Spring.',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const StacksCarousel(),
                  const SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 532,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        TextItem(
                          label: 'Backend',
                          body:
                              'Experienced in Rest APIs with Kotlin and Java, using Spring framework. '
                              'Knowledge with JPA, Hibernate and test coverage using junit and Mockito.',
                        ),
                        TextItem(
                          label: 'Mobile',
                          body:
                              'Mobile Flutter development using Design System, Bloc and Firebase. '
                              'Experience in native Android development.',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            Container(
              height: MediaQuery.of(context).size.height,
              width: 500,
              color: DSColors.secondary,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    AnimatedHover(
                        child: ItemButton(
                      asset: DSImages.vscodeSvg,
                      title: '6 Personal \nprojects',
                      action: 'View on Github',
                    )),
                    AnimatedHover(
                        child: ItemButton(
                      asset: DSImages.figmaSvg,
                      title: '6 Personal \ndesigns',
                      action: 'View on Figma',
                    )),
                    AnimatedHover(
                        child: ItemButton(
                      asset: DSImages.aboutSvg,
                      title: 'About Me',
                      action: 'Bio',
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
