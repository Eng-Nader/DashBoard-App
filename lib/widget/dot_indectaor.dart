import 'package:flutter/material.dart';

class DotIndecator extends StatelessWidget {
  const DotIndecator({
    super.key,
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(3, (int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 350),
              height: 8,
              width: isActive ? 36 : 8,
              decoration: BoxDecoration(
                color: isActive
                    ? const Color(0xff4EB7F2)
                    : const Color(0xffE8E8E8),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
            ),
          );
        })
      ],
    );
  }
}
