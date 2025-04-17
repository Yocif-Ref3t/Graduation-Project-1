import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project1/core/constants/routes.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';
import 'package:graduation_project1/core/widgets/custom_button.dart';
import 'package:graduation_project1/core/widgets/custom_snack_bar.dart';
import 'package:graduation_project1/features/check/presentation/manager/predict%20cubit/predict_cubit.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'counter_widget.dart';
import 'title_input_widget.dart';

class PredictViewBody extends StatefulWidget {
  const PredictViewBody({super.key});

  @override
  State<PredictViewBody> createState() => _PredictViewBodyState();
}

class _PredictViewBodyState extends State<PredictViewBody> {
  User get user => Supabase.instance.client.auth.currentUser!;
  final TextEditingController glucoseController = TextEditingController();
  final TextEditingController bloodPressureController = TextEditingController();
  final TextEditingController skinThicknessController = TextEditingController();
  final TextEditingController insulinRatioController = TextEditingController();
  final TextEditingController bmiPercentageController = TextEditingController();
  final TextEditingController geneticIncidenceRateController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  PredictCubit get cubit => BlocProvider.of(context);
  int pregnancies = 0;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<PredictCubit, PredictState>(
      listener: (context, state) {
        if (state is PredictLoading) {
          isLoading = true;
        } else if (state is PredictSuccess) {
          isLoading = false;
          context.routerPushReplacement(Routes.predictResultView, state.result);
        } else if (state is PredictFailure) {
          isLoading = false;
          ShowCustomSnackBar(context).failure(state.error);
        }
        setState(() {});
      },
      child: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (user.userMetadata!['gender'] == "Female")
                  CounterWidget(
                    text: "NumberOfPregnancies".tr(context: context),
                    onChanged: (value) {
                      pregnancies = value;
                    },
                  ),
                TitleInputWidget(
                  title: "GlucoseLevel".tr(context: context),
                  controller: glucoseController,
                  validator: (value) {
                    if (value == null || value.isEmpty) return "RequiredField".tr(context: context);
                    try {
                      double.parse(value);
                      return null;
                    } catch (ex) {
                      return "NumberValidationMSG".tr(context: context);
                    }
                  },
                ),
                TitleInputWidget(
                  title: "BloodPressure".tr(context: context),
                  controller: bloodPressureController,
                  validator: (value) {
                    if (value == null || value.isEmpty) return "RequiredField".tr(context: context);
                    try {
                      double.parse(value);
                      return null;
                    } catch (ex) {
                      return "NumberValidationMSG".tr(context: context);
                    }
                  },
                ),
                TitleInputWidget(
                  title: "SkinThickness".tr(context: context),
                  controller: skinThicknessController,
                  validator: (value) {
                    if (value == null || value.isEmpty) return "RequiredField".tr(context: context);
                    try {
                      double.parse(value);
                      return null;
                    } catch (ex) {
                      return "NumberValidationMSG".tr(context: context);
                    }
                  },
                ),
                TitleInputWidget(
                  title: "InsulinRatio".tr(context: context),
                  controller: insulinRatioController,
                  validator: (value) {
                    if (value == null || value.isEmpty) return "RequiredField".tr(context: context);
                    try {
                      double.parse(value);
                      return null;
                    } catch (ex) {
                      return "NumberValidationMSG".tr(context: context);
                    }
                  },
                ),
                TitleInputWidget(
                  title: "BMIPercentage".tr(context: context),
                  controller: bmiPercentageController,
                  validator: (value) {
                    if (value == null || value.isEmpty) return "RequiredField".tr(context: context);
                    try {
                      double.parse(value);
                      return null;
                    } catch (ex) {
                      return "NumberValidationMSG".tr(context: context);
                    }
                  },
                ),
                TitleInputWidget(
                  title: "GeneticIncidenceRate".tr(context: context),
                  controller: geneticIncidenceRateController,
                  validator: (value) {
                    if (value == null || value.isEmpty) return "RequiredField".tr(context: context);
                    try {
                      double.parse(value);
                      return null;
                    } catch (ex) {
                      return "NumberValidationMSG".tr(context: context);
                    }
                  },
                ),
                CustomButton(
                  text: "Check".tr(context: context),
                  isLoading: isLoading,
                  onTap: () {
                    if (!formKey.currentState!.validate()) return;
                    cubit.pregnancies = pregnancies;
                    cubit.bloodPressure = double.parse(bloodPressureController.text);
                    cubit.bmi = double.parse(bmiPercentageController.text);
                    cubit.dpf = double.parse(geneticIncidenceRateController.text);
                    cubit.glucose = double.parse(glucoseController.text);
                    cubit.insulin = double.parse(insulinRatioController.text);
                    cubit.skinThickness = double.parse(skinThicknessController.text);
                    cubit.predict();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
