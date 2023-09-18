//
//  fire_dash
//  context
//
//  Created by Ngonidzashe Mangudya on 16/09/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';

import '../theme/colors.dart';

extension ContextExtensions<T> on BuildContext {
  Future<T?> goTo({required Widget page}) => Navigator.of(this).push(
        MaterialPageRoute(builder: (_) => page),
      );

  Future<T?> goToAndReplace({required Widget page}) =>
      Navigator.of(this).pushReplacement(
        MaterialPageRoute(builder: (_) => page),
      );

  Future<T?> goToAndRemoveUntil({required Widget page}) =>
      Navigator.of(this).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => page),
        (route) => false,
      );

  void goBack({dynamic value}) => Navigator.of(this).pop(value);

  // notify
  void notify(String message, {bool isError = false}) =>
      ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          content: Text(
            message,
            style: const TextStyle(
              color: FDColors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          duration: 3.seconds,
          backgroundColor: FDColors.dark,
        ),
      );
}
