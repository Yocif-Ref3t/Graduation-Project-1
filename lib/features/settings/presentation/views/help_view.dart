import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project1/core/widgets/custom_app_bar.dart';
import 'package:graduation_project1/features/settings/presentation/manager/help%20cubit/help_cubit.dart';

import 'widgets/help view/help_view_body.dart';

class HelpView extends StatelessWidget {
  const HelpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HelpCubit()..getHelp(),
      child: Scaffold(
        appBar: CustomAppBar(title: "Help".tr(context: context)),
        body: const HelpViewBody(),
      ),
    );
  }
}
