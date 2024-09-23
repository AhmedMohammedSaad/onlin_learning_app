import 'package:flutter/material.dart';

class ProjectByStudentAndAddproject extends StatelessWidget {
  const ProjectByStudentAndAddproject({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Project by student',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'Add project',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
