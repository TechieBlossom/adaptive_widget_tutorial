import 'package:adaptive_widgets/widgets/scaffold/adaptive_scaffold.dart';
import 'package:adaptive_widgets/widgets/sliver_app_bar/adaptive_sliver_app_bar.dart';
import 'package:flutter/material.dart';

class SliverScreen extends StatelessWidget {
  const SliverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      child: CustomScrollView(
        slivers: [
          AdaptiveSliverAppBar(
            title: Text(
              'Sliver Screen',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.black,
                  ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
              child: Center(
                child: Text('Scroll to see the SliverAppBar in effect.'),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 800,
              child: Center(
                child: Text('Another Sliver to Box Adapter'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
