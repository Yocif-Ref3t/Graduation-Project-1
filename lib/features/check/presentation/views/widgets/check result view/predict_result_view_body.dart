import 'package:flutter/material.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';
import 'package:graduation_project1/core/widgets/custom_button.dart';

class PredictResultViewBody extends StatelessWidget {
  const PredictResultViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "مصاب",
                style: context.texts.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "اليك بعض النصائح",
              style: context.texts.titleMedium!.copyWith(
                color: context.colors.primary,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "نصائح غذائيه",
              style: context.texts.titleSmall,
            ),
            SizedBox(height: 16),
            Text(
              "-تناول وجبات منتظمة: حاول تناول 3 وجبات رئيسية ووجبتين خفيفتين يوميًا للحفاظ على توازن السكر ",
              style: context.texts.bodyLarge!.copyWith(color: Colors.grey),
            ),
            SizedBox(height: 16),
            Text(
              "-اختر الكربوهيدرات المعقدة: مثل الشوفان، الأرز البني، الخبز الأسمر، وقلل من السكر الأبيض والخبز الأبيض.",
              style: context.texts.bodyLarge!.copyWith(color: Colors.grey),
            ),
            SizedBox(height: 16),
            Text(
              "-أكثر من الألياف: تساعد في إبطاء امتصاص السكر، مثل الخضروات، الفواكه بقشورها، والبقوليات.",
              style: context.texts.bodyLarge!.copyWith(color: Colors.grey),
            ),
            SizedBox(height: 16),
            Text(
              "-قلل من الدهون المشبعة والمقليات: ويفضل استخدام الزيوت الصحية مثل زيت الزيتون.",
              style: context.texts.bodyLarge!.copyWith(color: Colors.grey),
            ),
            SizedBox(height: 16),
            Text(
              "-شرب الماء بكثرة: وابتعد عن العصائر المحلاة والمشروبات الغازية",
              style: context.texts.bodyLarge!.copyWith(color: Colors.grey),
            ),
            Spacer(),
            CustomButton(
              text: "تم",
              onTap: () {
                context.routerPop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
