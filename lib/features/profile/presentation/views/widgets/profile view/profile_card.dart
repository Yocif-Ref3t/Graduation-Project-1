import 'package:flutter/material.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});
  static final User _user = Supabase.instance.client.auth.currentUser!;
  static const String imageURL = "";
  // static const String imageURL =
  //     "https://tse4.mm.bing.net/th?id=OIP.3l2nfzcHhMemSZooiH3B3AHaFj&pid=Api&P=0&h=220";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.colors.secondary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _user.userMetadata!['name'],
                style: context.texts.titleSmall,
              ),
              SizedBox(height: 5),
              Text(
                _user.userMetadata!['email'],
                style: context.texts.bodySmall,
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_user.userMetadata!['gender'], style: context.texts.bodySmall),
                  Text(' - ', style: context.texts.bodySmall),
                  Text(_user.userMetadata!['age'].toString(), style: context.texts.bodySmall),
                ],
              ),
            ],
          ),
          Container(
            clipBehavior: Clip.hardEdge,
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: context.colors.surface,
              shape: BoxShape.circle,
            ),
            child: Image.network(
              imageURL,
              errorBuilder: (context, error, stackTrace) {
                if (_user.userMetadata!['gender'] == "Male") {
                  return Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Image.asset(
                      "assets/icons/male.png",
                      color: Colors.white54,
                    ),
                  );
                } else {
                  return Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Image.asset(
                      "assets/icons/female.png",
                      color: Colors.white54,
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
