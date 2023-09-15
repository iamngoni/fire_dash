//
//  fire_dash
//  is_firebase_cli_installed
//
//  Created by Ngonidzashe Mangudya on 15/09/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'dart:io';

import 'package:process_run/shell.dart';

Future<bool> isFirebaseCliInstalled() async {
  final Shell shell = Shell();
  final List<ProcessResult> results = await shell.run('firebase --version');
  final bool isInstalled = results.isNotEmpty && results.first.exitCode == 0;
  return isInstalled;
}
