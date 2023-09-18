//
//  fire_dash
//  providers
//
//  Created by Ngonidzashe Mangudya on 15/09/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/state/tools/tools_bloc.dart';
import 'firedash/state/projects/projects_bloc.dart';

List<BlocProvider> providers = [
  BlocProvider<ToolsBloc>(
    create: (_) => ToolsBloc()..add(const VerifyToolsInstalled()),
  ),
  BlocProvider<ProjectsBloc>(
    create: (_) => ProjectsBloc()..add(const ListProjects()),
  ),
];
