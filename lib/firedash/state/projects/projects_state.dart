part of 'projects_bloc.dart';

abstract class ProjectsState extends Equatable {
  const ProjectsState();
}

class ProjectsInitial extends ProjectsState {
  @override
  List<Object> get props => [];
}

class ProjectsLoading extends ProjectsState {
  @override
  List<Object> get props => [];
}

class ProjectsLoaded extends ProjectsState {
  const ProjectsLoaded(this.projects);
  final List<Project> projects;

  @override
  List<Object> get props => [projects];
}

class ProjectsError extends ProjectsState {
  const ProjectsError(this.exception);
  final FireDashException exception;

  @override
  List<Object> get props => [exception];
}
