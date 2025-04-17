import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project1/core/widgets/custom_app_bar.dart';
import 'package:graduation_project1/features/check/presentation/manager/predict%20cubit/predict_cubit.dart';

import 'widgets/check view/predict_view_body.dart';

class PredictView extends StatelessWidget {
  const PredictView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PredictCubit(),
      child: Scaffold(
        appBar: CustomAppBar(title: "CheckYourSelf".tr(context: context)),
        body: PredictViewBody(),
      ),
    );
  }
}
