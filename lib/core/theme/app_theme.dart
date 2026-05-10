import 'package:flutter/material.dart';

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  // Text
  final Color? textmain;
  final Color? textsecondary;
  final Color? highlighter;

  // Layers
  final Color? bg; // Background
  final Color? bl; // Bottom Layer
  final Color? sl; // Secondary Layer
  final Color? hl; // Highlighted Layer

  // Actions
  final Color? onv;
  final Color? offv;
  final Color? deletev;

  // Appearances (Placeholders for now)
  final Color? app1;
  final Color? app2;
  final Color? app3;
  final Color? app4;

  const CustomColors({
    this.textmain,
    this.textsecondary,
    this.highlighter,
    this.bg,
    this.bl,
    this.sl,
    this.hl,
    this.onv,
    this.offv,
    this.deletev,
    this.app1,
    this.app2,
    this.app3,
    this.app4,
  });

  @override
  CustomColors copyWith({Color? textmain /* ... add others similarly */}) {
    return CustomColors(textmain: textmain ?? this.textmain);
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) return this;
    return CustomColors(
      textmain: Color.lerp(textmain, other.textmain, t),
      textsecondary: Color.lerp(textsecondary, other.textsecondary, t),
      highlighter: Color.lerp(highlighter, other.highlighter, t),
      bg: Color.lerp(bg, other.bg, t),
      bl: Color.lerp(bl, other.bl, t),
      sl: Color.lerp(sl, other.sl, t),
      hl: Color.lerp(hl, other.hl, t),
      onv: Color.lerp(onv, other.onv, t),
      offv: Color.lerp(offv, other.offv, t),
      deletev: Color.lerp(deletev, other.deletev, t),
      app1: Color.lerp(app1, other.app1, t),
      app2: Color.lerp(app2, other.app2, t),
      app3: Color.lerp(app3, other.app3, t),
      app4: Color.lerp(app4, other.app4, t),
    );
  }
}

class AppTheme {
  // LIGHT MODE DEFINITION
  static final light = ThemeData.light().copyWith(
    extensions: <ThemeExtension<dynamic>>[
      const CustomColors(
        textmain: Color(0xFF000000),
        textsecondary: Color(0xFF757575),
        highlighter: Color(0xFFFFD700),
        bg: Color(0xFFF5F5F5),
        bl: Color(0xFFFFFFFF),
        sl: Color(0xFFE0E0E0),
        hl: Color(0xFFBBDEFB),
        onv: Color(0xFF4CAF50), // Green for ON
        offv: Color(0xFF9E9E9E), // Grey for OFF
        deletev: Color(0xFFF44336), // Red for DELETE
        app1: Colors.purple,
        app2: Colors.blue,
        app3: Colors.orange,
        app4: Colors.teal,
      ),
    ],
  );

  // DARK MODE DEFINITION
  static final dark = ThemeData.dark().copyWith(
    extensions: <ThemeExtension<dynamic>>[
      const CustomColors(
        textmain: Color(0xFFFFFFFF),
        textsecondary: Color(0xFFB0B0B0),
        highlighter: Color(0xFFFBC02D),
        bg: Color(0xFF121212),
        bl: Color(0xFF1E1E1E),
        sl: Color(0xFF2C2C2C),
        hl: Color(0xFF37474F),
        onv: Color(0xFF81C784),
        offv: Color(0xFF616161),
        deletev: Color(0xFFE57373),
        app1: Colors.deepPurple,
        app2: Colors.indigo,
        app3: Colors.deepOrange,
        app4: Colors.cyan,
      ),
    ],
  );
}
