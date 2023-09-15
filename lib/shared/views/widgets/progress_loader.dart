//
//  fire_dash
//  progress_loader
//
//  Created by Ngonidzashe Mangudya on 16/09/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../theme/colors.dart';

class ProgressLoader extends StatelessWidget {
  const ProgressLoader({
    this.color = FDColors.purple,
    super.key,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return SizedBox(
          height: sy(15),
          width: sy(15),
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(
              color,
            ),
          ),
        );
      },
    );
  }
}
