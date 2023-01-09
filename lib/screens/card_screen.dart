import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://stsci-opo.org/STScI-01G77PGXFM1NRHYEFRD9VMS26R.png',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://images.theconversation.com/files/125391/original/image-20160606-13080-s7o3qu.jpg?ixlib=rb-1.1.0&rect=0%2C62%2C3200%2C1552&q=45&auto=format&w=1356&h=668&fit=crop',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://media.macphun.com/img/uploads/customer/blog/504/15360610675b8e6e8b52bd36.49629027.jpg?q=85&w=1680',
            description: 'A beautiful landscape',
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
