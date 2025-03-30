import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project1/features/auth/data/repo/auth_repo_impl.dart';

part 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit() : super(ResetPasswordInitial());
  void resetPassword(String email) async {
    emit(ResetPasswordLoading());
    var result = await AuthRepoImpl().resetPassword(email);
    result.fold(
      (failure) => emit(ResetPasswordFailure(message: failure.message)),
      (success) => emit(ResetPasswordSuccess()),
    );
  }
}
