import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, // similar to overflow: 'hidden'
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 10,
      shadowColor: AppTheme.primaryColor.withOpacity(0.4),
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage(
              'https://stsci-opo.org/STScI-01G77PGXFM1NRHYEFRD9VMS26R.png',
            ),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity, // works on widgets where width is limited
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: const Text('A beaufitul landscape'),
          )
        ],
      ),
    );
  }
}
