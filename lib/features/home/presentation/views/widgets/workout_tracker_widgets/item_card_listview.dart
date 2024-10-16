import 'package:flutter/material.dart';

import '../../../../data/workout_model.dart';
import 'item_card_item.dart';

class ItemCardListView extends StatelessWidget {
  const ItemCardListView({super.key, required this.items});

  final List<ItemModel> items;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        itemBuilder: (context, index) => ItemCardItem(item: items[index],),
      ),
    );
  }
}
