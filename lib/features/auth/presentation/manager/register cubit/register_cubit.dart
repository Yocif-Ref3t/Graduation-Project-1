import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project1/features/auth/data/models/user_model.dart';
import 'package:graduation_project1/features/auth/data/repo/auth_repo_impl.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  String? name, email, password, birthdate, gender;
  int? age;

  void register() async {
    emit(RegisterLoading());
    var result = await AuthRepoImpl().register(this);
    result.fold(
      (failure) => emit(RegisterFailure(message: failure.message)),
      (user) => emit(RegisterSuccess(user: user)),
    );
  }
}
