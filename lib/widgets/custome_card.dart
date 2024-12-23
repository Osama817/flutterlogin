
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/helpers/constants.dart';

import '../helpers/TopAndBottomWaveClipper.dart';
import '../themes/styles.dart';

class CustomCard extends StatelessWidget {

final Widget child;
  const CustomCard({super.key,required this.child,});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TopAndBottomWaveClipper(),
      child: Container(
        width:MediaQuery.of(context).size.width,
        margin:const EdgeInsets.all(defaultMargin),
        height: MediaQuery.of(context).size.height/2,
        decoration:ThemeDecorations.gradientBox(context),
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: child
        ),
      ),
    );
  }
}

