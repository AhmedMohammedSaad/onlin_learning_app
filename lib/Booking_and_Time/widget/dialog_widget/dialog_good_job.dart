import 'package:flutter/material.dart';
import 'container_dialog.dart';

class DialogGoodJob extends StatelessWidget {
  const DialogGoodJob({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color.fromARGB(
          255, 255, 255, 255), //! White background for the dialog
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(5), //! Rounded corners for the dialog
      ),
      child: const ContainerDialog(),
    );
  }
}
