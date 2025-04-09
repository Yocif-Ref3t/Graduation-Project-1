import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project1/core/widgets/loading_handler.dart';
import 'package:graduation_project1/features/settings/presentation/manager/help%20cubit/help_cubit.dart';
import 'help_item.dart';

class HelpViewBody extends StatefulWidget {
  const HelpViewBody({super.key});

  @override
  State<HelpViewBody> createState() => _HelpViewBodyState();
}

class _HelpViewBodyState extends State<HelpViewBody> {
  List<Map<String, dynamic>> questions = [];
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<HelpCubit, HelpState>(
      listener: (context, state) {
        if (state is HelpLoading) {
          isLoading = true;
        } else if (state is HelpSuccess) {
          isLoading = false;
          questions = state.questions;
        } else if (state is HelpFailure) {
          isLoading = false;
        }
        setState(() {});
      },
      child: LoadingHandler(
        isLoading: isLoading,
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: questions.length,
          itemBuilder: (context, index) => HelpItem(
            question: questions[index]["question_${context.locale.languageCode}"],
            answer: questions[index]['answer_${context.locale.languageCode}'],
          ),
        ),
      ),
    );
  }
}
