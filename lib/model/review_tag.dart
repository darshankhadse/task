import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewTag extends StatelessWidget {
  final String text;

  const ReviewTag({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text('"$text"', style: GoogleFonts.notoSansKr()),
    );
  }
}