//
//  fire_dash
//  list_of_firebase_projects
//
//  Created by Ngonidzashe Mangudya on 18/09/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'dart:convert';
import 'dart:io';

import 'package:process_run/process_run.dart';

import '../../firedash/models/data/project.dart';

Future<List<Project>> listOfFirebaseProjects() async {
  final Shell shell = Shell();
  final List<ProcessResult> results =
      await shell.run('firebase projects:list --json');
  var firstProcessResultStdOut = results.first.stdout;
  firstProcessResultStdOut = json.decode(firstProcessResultStdOut as String);
  final Map<String, dynamic> jsonResult =
      firstProcessResultStdOut as Map<String, dynamic>;

  final List<dynamic> projectsJson = jsonResult['result'] as List<dynamic>;

  final List<Project> projects = projectsJson
      .map((e) => Project.fromJson(e as Map<String, dynamic>))
      .toList();
  return projects;
}
