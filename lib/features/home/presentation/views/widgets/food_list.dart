import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project1/features/home/presentation/views/widgets/food_widget.dart';

Map<String, dynamic> food = {
  'en': [
    {
      'image': "assets/images/1.jpg",
      'title': "Grilled Chicken",
      'desc':
          "Grilled Chicken with Roasted Vegetables A lean chicken breast paired with zucchini, bell peppers, and tomatoes—rich in protein and fiber to help stabilize blood sugar.",
    },
    {
      'image': "assets/images/2.jpg",
      'title': "Garlic & Herb",
      'desc':
          "Garlic & Herb Chicken and Veggies Tender chicken seasoned with garlic and herbs, served alongside asparagus, zucchini, and red peppers for a low‑carb, nutrient‑dense meal",
    },
    {
      'image': "assets/images/3.jpg",
      'title': "Diabetic‑Friendly",
      'desc':
          "Diabetic‑Friendly Lemon Herb Chicken Salad Sliced grilled chicken breast over a bed of mixed greens, avocado, cherry tomatoes, and red onion—packed with healthy fats and fiber",
    },
    {
      'image': "assets/images/4.jpg",
      'title': "Wholemeal toast",
      'desc':
          "Wholemeal toast with eggs and vegetables A slice of bread with a slice of lean meat and sliced ​​peaches or low-sugar fruit, plus delicious green, high-fiber baked goods",
    },
    {
      'image': "assets/images/5.jpg",
      'title': "Avocado & Boiled Egg",
      'desc':
          "Avocado & Boiled Egg Salad\n•	Ingredients: Sliced avocado, boiled eggs, lettuce, fresh spinach, olive oil, cumin, lemon juice.\n•	Benefits: A mix of healthy fats and protein—great for a light dinner or snack.",
    },
    {
      'image': "assets/images/6.jpg",
      'title': "Chickpea & Veggie Salad",
      'desc':
          " Chickpea & Veggie Salad\n•	Ingredients: Cucumber, tomatoes, parsley, bell peppers, boiled chickpeas, lemon juice, olive oil.\n•	Benefits: Chickpeas provide fiber and protein, promoting fullness without spiking blood sugar.",
    },
  ],
  'ar': [
    {
      'image': "assets/images/1.jpg",
      'title': "دجاج مشوي",
      'desc':
          "دجاج مشوي مع خضار محمصة صدر دجاج خالٍ من الجلد، مشويّ ومقدّم مع القرع، الفلفل الملون، والطماطم، غنياً بالبروتين والألياف لتثبيت مستوى السكر",
    },
    {
      'image': "assets/images/2.jpg",
      'title': "دجاج بالأعشاب",
      'desc':
          "دجاج بالأعشاب والثوم مع الخضروات قطع دجاج طرية متبّلة بالثوم والأعشاب، مقدّمة مع الهليون، الكوسا، والفلفل الأحمر لوجبة قليلة الكربوهيدرات وغنيّة بالفيتامينات",
    },
    {
      'image': "assets/images/3.jpg",
      'title': "سلطة الدجاج بالأعشاب",
      'desc':
          "سلطة الدجاج بالأعشاب والليمون لمرضى السكري شرائح دجاج مشويّة على سلّة من الخضار الورقية (خس، أفوكادو، طماطم كرزية، بصل أحمر) مع تتبيلة زيت الزيتون والليمون، غنية بالدهون الصحية والألياف",
    },
    {
      'image': "assets/images/4.jpg",
      'title': "خبز توست",
      'desc':
          "خبز توست أسمر مع بيض وخضار شريحة خبز بر مع بيض مقلي بقليل من الزيت وشرائح خوخ أو فواكه منخفضة السكر، إضافة للخضار المشوية لزيادة الألياف",
    },
    {
      'image': "assets/images/5.jpg",
      'title': "سلطة الأفوكادو والبيض",
      'desc':
          "سلطة الأفوكادو والبيض\n•	المكونات: شرائح أفوكادو، بيض مسلوق، خس، سبانخ طازج، زيت زيتون، رشة كمون وليمون.\n•	الفائدة: مزيج من الدهون الصحية والبروتين، ممتاز كوجبة خفيفة أو عشاء خفيف",
    },
    {
      'image': "assets/images/6.jpg",
      'title': "سلطة الأفوكادو والبيض",
      'desc':
          "سلطة الحمص والخضار\n•	المكونات: خيار، طماطم، بقدونس، فلفل رومي، حمص مسلوق، عصير ليمون، زيت زيتون.\n•	الفائدة: الحمص مصدر ممتاز للألياف والبروتين، ويساعد على الشبع دون رفع السكر بسرعة",
    },
  ],
};

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: food[context.locale.languageCode].length,
        itemBuilder: (context, index) {
          return FoodWidget(data: food[context.locale.languageCode][index]);
        },
      ),
    );
  }
}
