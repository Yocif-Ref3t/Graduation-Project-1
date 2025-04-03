import 'package:flutter/material.dart';
import 'package:graduation_project1/core/extensions/extensions.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final Function(int) onChange;
  const CustomBottomNavigationBar({super.key, required this.onChange});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
        bottom: 25,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.colors.secondary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomBottomNavigationBarItem(
            icon: Icons.home,
            label: "Home",
            isSelected: currentIndex == 0,
            onTap: () {
              if (currentIndex == 0) return;
              currentIndex = 0;
              setState(() {});
              widget.onChange(currentIndex);
            },
          ),
          CustomBottomNavigationBarItem(
            icon: Icons.person,
            label: "Profile",
            isSelected: currentIndex == 1,
            onTap: () {
              if (currentIndex == 1) return;
              currentIndex = 1;
              setState(() {});
              widget.onChange(currentIndex);
            },
          ),
          CustomBottomNavigationBarItem(
            icon: Icons.settings,
            label: "Settings",
            isSelected: currentIndex == 2,
            onTap: () {
              if (currentIndex == 2) return;
              currentIndex = 2;
              setState(() {});
              widget.onChange(currentIndex);
            },
          )
        ],
      ),
    );
  }
}

class CustomBottomNavigationBarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final Function() onTap;
  const CustomBottomNavigationBarItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Column(
          spacing: 5,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: isSelected ? 28 : 27,
              color: isSelected ? context.colors.primary : Colors.white70,
            ),
            if (isSelected)
              Text(
                label,
                style: TextStyle(fontSize: 13, color: context.colors.primary),
              ),
          ],
        ),
      ),
    );
  }
}
