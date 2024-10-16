import 'package:flutter/material.dart';

class SliverBodyContainer extends StatelessWidget {
  const SliverBodyContainer({super.key, required this.sliverBody});

  final Widget sliverBody;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40)
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 30),
          child: sliverBody,
        ),

      ),
    );
  }
}
