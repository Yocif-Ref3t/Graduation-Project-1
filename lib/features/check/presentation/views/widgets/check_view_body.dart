import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';
import 'package:graduation_project1/core/widgets/custom_button.dart';
import 'package:graduation_project1/core/widgets/custom_text_field.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'counter_widget.dart';
import 'title_input_widget.dart';

class CheckViewBody extends StatefulWidget {
  const CheckViewBody({super.key});

  @override
  State<CheckViewBody> createState() => _CheckViewBodyState();
}

class _CheckViewBodyState extends State<CheckViewBody> {
  User get user => Supabase.instance.client.auth.currentUser!;
  final TextEditingController glucoseController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (user.userMetadata!['gender'] == "Female")
            CounterWidget(
              text: "عدد مرات الحمل",
              onChanged: (value) {},
            ),
          TitleInputWidget(
            title: "نسبة الجلوكوز",
            controller: glucoseController,
          ),
          TitleInputWidget(
            title: "ضغط الدم",
            controller: glucoseController,
          ),
          TitleInputWidget(
            title: "سمك الجلد (مم)",
            controller: glucoseController,
          ),
          TitleInputWidget(
            title: "نسبة الانسولين",
            controller: glucoseController,
          ),
          TitleInputWidget(
            title: "نسبة BMI",
            controller: glucoseController,
          ),
          TitleInputWidget(
            title: "نسبة الاصابه الوراثيه",
            controller: glucoseController,
          ),
          CustomButton(
            text: "Check".tr(context: context),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
