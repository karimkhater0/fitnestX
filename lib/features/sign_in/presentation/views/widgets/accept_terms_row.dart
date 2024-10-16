import 'package:fitness_app/features/sign_in/presentation/views/widgets/terms_text_widget.dart';
import 'package:flutter/material.dart';

import 'custom_check_box.dart';

class AcceptTermsRow extends StatelessWidget {
  const AcceptTermsRow({super.key, required this.isChecked, this.onChanged});

  final bool isChecked;
  final void Function(bool?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          CustomCheckBox(
            isChecked: isChecked,
            onChanged: onChanged,
          ),
          const Expanded(child: TermsText()),
        ],
      ),
    );
  }
}
