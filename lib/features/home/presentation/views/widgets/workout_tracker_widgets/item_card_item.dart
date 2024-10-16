import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';
import '../../../../data/workout_model.dart';

class ItemCardItem extends StatelessWidget {
  const ItemCardItem({super.key, required this.item});

  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomContainer(
          height: 130,
          width: 130,
          radius: 12,
          color: Colors.grey.withOpacity(0.3),
          child: Center(child: SvgPicture.asset(item.svg)),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          item.name,
          style: Styles.textStyleSmallTextRegular,
        )
      ],
    );
  }
}
