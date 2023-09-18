//
//  fire_dash
//  tools
//
//  Created by Ngonidzashe Mangudya on 15/09/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../core/state/tools/tools_bloc.dart';
import '../../firedash/views/pages/projects.dart';
import '../../shared/extensions/context.dart';
import '../../shared/theme/colors.dart';
import '../../shared/views/widgets/progress_loader.dart';

class FireDashToolsPage extends StatelessWidget {
  const FireDashToolsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('FireDash Tools'),
          ),
          body: Container(
            height: context.height,
            width: context.width,
            padding: EdgeInsets.symmetric(
              horizontal: sx(20),
              vertical: sy(20),
            ),
            child: BlocConsumer<ToolsBloc, ToolsState>(
              listener: (context, state) {
                if (state is ToolsInstalled) {
                  if (state.isFirebaseCliInstalled &&
                      state.isFirebaseCliLoggedIn) {
                    context.goTo(
                      page: const FireDashProjectsPage(),
                    );
                  }
                }
              },
              builder: (context, state) {
                if (state is CheckingTools) {
                  return const Center(
                    child: ProgressLoader(),
                  );
                }
                if (state is ToolsInstalled) {
                  return Container();
                }

                return Center(
                  child: GestureDetector(
                    onTap: () => context
                        .read<ToolsBloc>()
                        .add(const VerifyToolsInstalled()),
                    child: Text(
                      'Failed to check if all tools are installed. Tap to retry.',
                      style: TextStyle(
                        color: FDColors.purple,
                        fontWeight: FontWeight.w400,
                        fontSize: sy(12),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
