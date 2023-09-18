//
//  fire_dash
//  projects
//
//  Created by Ngonidzashe Mangudya on 16/09/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../shared/dialogs/confirm_action.dart';
import '../../../shared/extensions/context.dart';
import '../../../shared/theme/colors.dart';
import '../../../shared/views/widgets/progress_loader.dart';
import '../../state/projects/projects_bloc.dart';

class FireDashProjectsPage extends StatelessWidget {
  const FireDashProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Projects'),
          ),
          body: Container(
            height: context.height,
            width: context.width,
            padding: EdgeInsets.symmetric(
              horizontal: sx(20),
              vertical: sy(20),
            ),
            child: BlocConsumer<ProjectsBloc, ProjectsState>(
              listener: (context, state) {
                if (state is ProjectsError) {
                  context.notify(
                    state.exception.message,
                    isError: true,
                  );
                }
              },
              builder: (context, state) {
                if (state is ProjectsLoading) {
                  return const Center(
                    child: ProgressLoader(),
                  );
                }

                if (state is ProjectsLoaded) {
                  return ListView(
                    children: state.projects.map((p) {
                      return Dismissible(
                        key: Key(p.projectId),
                        confirmDismiss: (direction) async {
                          final bool? confirm = await showConfirmActionDialog(
                            'Are you sure you want to delete this project?',
                            context: context,
                            title: 'Confirm Action',
                          );

                          if (confirm != null && confirm) {
                            context.notify(
                              'Project ${p.displayName} deleted',
                              isError: false,
                            );
                            return true;
                          }

                          return false;
                        },
                        child: ListTile(
                          tileColor: state.projects.indexOf(p).isEven
                              ? FDColors.dark.withOpacity(01)
                              : FDColors.white,
                          title: Text(
                            p.displayName.headingCase,
                            style: TextStyle(
                              color: state.projects.indexOf(p).isEven
                                  ? FDColors.white
                                  : FDColors.dark,
                              fontWeight: FontWeight.w700,
                              fontSize: sy(12),
                            ),
                          ),
                          subtitle: Text(
                            p.name,
                            style: TextStyle(
                              color: (state.projects.indexOf(p).isEven
                                      ? FDColors.white
                                      : FDColors.dark)
                                  .withOpacity(0.7),
                              fontWeight: FontWeight.w400,
                              fontSize: sy(10),
                            ),
                          ),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.arrow_forward,
                              color: state.projects.indexOf(p).isEven
                                  ? FDColors.white
                                  : FDColors.dark,
                            ),
                            onPressed: () async {},
                          ),
                        ),
                      );
                    }).toList(),
                  );
                }

                return Center(
                  child: Text(
                    'Retry Action',
                    style: const TextStyle(
                      color: FDColors.purple,
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
