//
//  fire_dash
//  is_firebase_logged_in
//
//  Created by Ngonidzashe Mangudya on 15/09/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'dart:io';

import 'package:process_run/shell.dart';

import '../../shared/models/data/fire_dash_exception.dart';

Future<bool> isFirebaseCliLoggedIn() async {
  try {
    final Shell shell = Shell();
    final List<ProcessResult> results =
        await shell.run('firebase login --non-interactive');
    final bool isLoggedIn = results.isNotEmpty &&
        results.first.exitCode == 0 &&
        results.first.stdout.toString().startsWith('Already logged in as');
    return isLoggedIn;
  } catch (e) {
    throw FireDashException(
      'Error checking if Firebase CLI is installed: ${e.toString()}',
    );
  }
}
