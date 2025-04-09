import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project1/features/settings/data/repo/help_repo_impl.dart';

part 'help_state.dart';

class HelpCubit extends Cubit<HelpState> {
  HelpCubit() : super(HelpInitial());

  void getHelp() async {
    Future.delayed(const Duration(microseconds: 0)).whenComplete(() {
      emit(HelpLoading());
    });
    final response = await HelpRepoImpl().getHelp();
    response.fold(
      (l) => emit(HelpFailure(message: l.message)),
      (r) => emit(HelpSuccess(questions: r)),
    );
  }
}
