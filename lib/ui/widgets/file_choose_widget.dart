import 'package:flutter/material.dart';
import 'package:translate_generator/ui/widgets/custom_button.dart';
import 'package:translate_generator/utils/app_colors.dart';

class FileChooseWidget extends StatelessWidget {
  final Function() onFilePicked;
  final String hintText;
  const FileChooseWidget(
      {super.key, required this.onFilePicked, this.hintText = 'Select a File'});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onFilePicked,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColor.accentColor)),
            child: Text(
              hintText,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        CustomButton(
          title: "Choose",
          onPressed: onFilePicked,
        ),
      ],
    );
  }
}
