import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import '../../../core/utils/list_of_firebase_projects.dart';
import '../../../shared/models/data/fire_dash_exception.dart';
import '../../models/data/project.dart';

part 'projects_event.dart';
part 'projects_state.dart';

class ProjectsBloc extends Bloc<ProjectsEvent, ProjectsState> {
  ProjectsBloc() : super(ProjectsInitial()) {
    on<ListProjects>((event, emit) async {
      try {
        emit(ProjectsLoading());
        final List<Project> projects = await listOfFirebaseProjects();
        emit(ProjectsLoaded(projects));
      } catch (e, s) {
        log(e.toString(), error: e, stackTrace: s);
        unawaited(Sentry.captureException(e, stackTrace: s));
        emit(ProjectsError(FireDashException.unknownError()));
      }
    });
  }
}
