//
//  fire_dash
//  fire_dash_exception
//
//  Created by Ngonidzashe Mangudya on 15/09/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'error_code.dart';

class FireDashException implements Exception {
  FireDashException(
    this.message, {
    this.title = "Hey, it's not you, it's us.",
    this.code = ErrorCode.unknownError,
  });

  factory FireDashException.unknownError() => FireDashException(
        'An unknown error occurred. Please try again later.',
        title: 'Unknown Error',
      );

  final String message;
  final String title;
  final ErrorCode code;

  @override
  String toString() => '${code.code}: $message';
}
