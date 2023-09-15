import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../shared/models/data/fire_dash_exception.dart';
import '../../utils/is_firebase_cli_installed.dart';
import '../../utils/is_firebase_logged_in.dart';

part 'tools_event.dart';
part 'tools_state.dart';

class ToolsBloc extends Bloc<ToolsEvent, ToolsState> {
  ToolsBloc() : super(ToolsInitial()) {
    on<VerifyToolsInstalled>((event, emit) async {
      try {
        emit(const CheckingTools());
        final isFirebaseCliInstalledOnPC = await isFirebaseCliInstalled();
        if (!isFirebaseCliInstalledOnPC) {
          emit(
            ToolsInstalled(isFirebaseCliInstalled: isFirebaseCliInstalledOnPC),
          );
        } else {
          final bool isFirebaseCliLoggedInOnPC = await isFirebaseCliLoggedIn();
          emit(
            ToolsInstalled(
              isFirebaseCliInstalled: isFirebaseCliInstalledOnPC,
              isFirebaseCliLoggedIn: isFirebaseCliLoggedInOnPC,
            ),
          );
        }
      } catch (e, s) {
        log(e.toString(), error: e, stackTrace: s);
        emit(ToolsError(FireDashException(e.toString())));
      }
    });
  }
}
