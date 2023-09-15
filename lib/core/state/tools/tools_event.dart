part of 'tools_bloc.dart';

abstract class ToolsEvent extends Equatable {
  const ToolsEvent();
}

class VerifyToolsInstalled extends ToolsEvent {
  const VerifyToolsInstalled();

  @override
  List<Object> get props => [];
}
