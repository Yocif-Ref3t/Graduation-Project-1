import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project1/features/check/data/models/check_data_model.dart';
import 'package:graduation_project1/features/check/data/repo/check_repo_impl.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'predict_state.dart';

class PredictCubit extends Cubit<PredictState> {
  PredictCubit() : super(PredictInitial());
  int? pregnancies;
  double? glucose, bloodPressure, skinThickness, insulin, bmi, dpf;

  void predict() async {
    await Future.delayed(Duration(microseconds: 0)).whenComplete(() {
      emit(PredictLoading());
    });
    final User user = Supabase.instance.client.auth.currentUser!;
    DateTime birthDate = DateTime.parse(user.userMetadata!['birthdate']);
    var result = await CheckRepoImpl().predict(CheckDataModel(
      pregnancies: pregnancies!,
      glucose: glucose!,
      bloodPressure: bloodPressure!,
      skinThickness: skinThickness!,
      insulin: insulin!,
      bmi: bmi!,
      diabetesPedigreeFunction: dpf!,
      age: DateTime.now().year - birthDate.year,
    ));
    result.fold(
      (failure) => emit(PredictFailure(error: failure.message)),
      (result) => emit(PredictSuccess(result: result)),
    );
  }
}
