
import 'package:flutter/material.dart';

import '../models/jechama_model.dart';

class JechamaDetailScreen extends StatelessWidget {
  final Jechama quote;

  const JechamaDetailScreen({Key? key, required this.quote}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildBackground(context),
          _buildContent(context),
        ],
      ),
    );
  }

  Widget _buildBackground(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade400, Colors.blue.shade900],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: MediaQuery.of(context).padding.top + kToolbarHeight),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            quote.title,
            style: Theme.of(context).textTheme.headline4?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                quote.meaning,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
