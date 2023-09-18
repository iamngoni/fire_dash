part of 'projects_bloc.dart';

abstract class ProjectsEvent extends Equatable {
  const ProjectsEvent();
}

class ListProjects extends ProjectsEvent {
  const ListProjects();

  @override
  List<Object> get props => [];
}
