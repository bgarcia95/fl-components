import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? description;

  const CustomCardType2({super.key, required this.imageUrl, this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, // similar to overflow: 'hidden'
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 10,
      shadowColor: AppTheme.primaryColor.withOpacity(0.4),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(
              imageUrl,
            ),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity, // works on widgets where width is limited
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (description != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(description!),
            )
        ],
      ),
    );
  }
}
