import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart'; // Ensure this points to your theme file

class OriginalPage extends StatelessWidget {
  const OriginalPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Accessing your custom layer and text colors
    final colors = Theme.of(context).extension<CustomColors>()!;

    return Scaffold(
      // Using 'bg' (Background)
      backgroundColor: colors.bg,

      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(colors),
            const Expanded(
              child: Center(
                child: Text(
                  "Original Timer View",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            _buildBottomSection(colors),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(CustomColors colors) {
    return Container(
      padding: const EdgeInsets.all(20),
      // Using 'bl' (Bottom Layer) for secondary containers
      decoration: BoxDecoration(
        color: colors.bl,
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu, color: colors.textmain),
          Text(
            "Original",
            style: TextStyle(
              color: colors.textmain, // Using textmain
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Icon(Icons.add, color: colors.textmain),
        ],
      ),
    );
  }

  Widget _buildBottomSection(CustomColors colors) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(12),
      // Using 'sl' (Secondary Layer) for the pill/dock area
      decoration: BoxDecoration(
        color: colors.sl,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.timer, color: colors.highlighter), // Highlight color
          Icon(
            Icons.grid_view,
            color: colors.textsecondary,
          ), // Secondary text color
          Icon(Icons.gesture, color: colors.textsecondary),
        ],
      ),
    );
  }
}
