//
//  fire_dash
//  tools
//
//  Created by Ngonidzashe Mangudya on 15/09/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/state/tools/tools_bloc.dart';
import '../../shared/views/widgets/progress_loader.dart';

class FireDashToolsPage extends StatelessWidget {
  const FireDashToolsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FireDash Tools'),
      ),
      body: BlocBuilder<ToolsBloc, ToolsState>(
        builder: (context, state) {
          if (state is CheckingTools) {
            return const Center(
              child: ProgressLoader(),
            );
          }
          return Center(
            child: Text('FireDash Tools'),
          );
        },
      ),
    );
  }
}
