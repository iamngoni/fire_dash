part of 'tools_bloc.dart';

abstract class ToolsState extends Equatable {
  const ToolsState();
}

class ToolsInitial extends ToolsState {
  @override
  List<Object> get props => [];
}

class CheckingTools extends ToolsState {
  const CheckingTools();

  @override
  List<Object> get props => [];
}

class ToolsInstalled extends ToolsState {
  const ToolsInstalled({
    required this.isFirebaseCliInstalled,
    this.isFirebaseCliLoggedIn = false,
  });

  final bool isFirebaseCliInstalled;
  final bool isFirebaseCliLoggedIn;

  @override
  List<Object> get props => [isFirebaseCliInstalled];
}

class ToolsError extends ToolsState {
  const ToolsError(this.exception);

  final FireDashException exception;

  @override
  List<Object> get props => [exception];
}
