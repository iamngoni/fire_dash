//
//  fire_dash
//  confirm_action
//
//  Created by Ngonidzashe Mangudya on 19/09/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';

import '../extensions/context.dart';

Future<bool?> showConfirmActionDialog(
  String message, {
  required BuildContext context,
  String? title,
}) {
  return showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      title: title != null ? Text(title) : null,
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () => context.goBack(value: false),
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () => context.goBack(value: true),
          child: const Text('Yes'),
        ),
      ],
    ),
  );
}
