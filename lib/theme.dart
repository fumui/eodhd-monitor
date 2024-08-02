import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff28638a),
      surfaceTint: Color(0xff28638a),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffcae6ff),
      onPrimaryContainer: Color(0xff001e30),
      secondary: Color(0xff50606e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd3e5f6),
      onSecondaryContainer: Color(0xff0c1d29),
      tertiary: Color(0xff65587b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffebdcff),
      onTertiaryContainer: Color(0xff201634),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff7f9ff),
      onBackground: Color(0xff181c20),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff181c20),
      surfaceVariant: Color(0xffdde3ea),
      onSurfaceVariant: Color(0xff41474d),
      outline: Color(0xff72787e),
      outlineVariant: Color(0xffc1c7ce),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inverseOnSurface: Color(0xffeef1f6),
      inversePrimary: Color(0xff96cdf8),
      primaryFixed: Color(0xffcae6ff),
      onPrimaryFixed: Color(0xff001e30),
      primaryFixedDim: Color(0xff96cdf8),
      onPrimaryFixedVariant: Color(0xff004b70),
      secondaryFixed: Color(0xffd3e5f6),
      onSecondaryFixed: Color(0xff0c1d29),
      secondaryFixedDim: Color(0xffb7c9d9),
      onSecondaryFixedVariant: Color(0xff384956),
      tertiaryFixed: Color(0xffebdcff),
      onTertiaryFixed: Color(0xff201634),
      tertiaryFixedDim: Color(0xffcfc0e8),
      onTertiaryFixedVariant: Color(0xff4d4162),
      surfaceDim: Color(0xffd7dadf),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef3),
      surfaceContainerHigh: Color(0xffe5e8ed),
      surfaceContainerHighest: Color(0xffe0e3e8),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff00476a),
      surfaceTint: Color(0xff28638a),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff427aa1),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff344552),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff667685),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff493d5e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff7c6e92),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff7f9ff),
      onBackground: Color(0xff181c20),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff181c20),
      surfaceVariant: Color(0xffdde3ea),
      onSurfaceVariant: Color(0xff3d4349),
      outline: Color(0xff5a6066),
      outlineVariant: Color(0xff757b82),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inverseOnSurface: Color(0xffeef1f6),
      inversePrimary: Color(0xff96cdf8),
      primaryFixed: Color(0xff427aa1),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff246187),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff667685),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff4d5e6c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff7c6e92),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff625679),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dadf),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef3),
      surfaceContainerHigh: Color(0xffe5e8ed),
      surfaceContainerHighest: Color(0xffe0e3e8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff00253a),
      surfaceTint: Color(0xff28638a),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff00476a),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff132430),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff344552),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff271d3b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff493d5e),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff7f9ff),
      onBackground: Color(0xff181c20),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffdde3ea),
      onSurfaceVariant: Color(0xff1f252a),
      outline: Color(0xff3d4349),
      outlineVariant: Color(0xff3d4349),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffddeeff),
      primaryFixed: Color(0xff00476a),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003049),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff344552),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff1e2e3b),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff493d5e),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff322747),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dadf),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef3),
      surfaceContainerHigh: Color(0xffe5e8ed),
      surfaceContainerHighest: Color(0xffe0e3e8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff96cdf8),
      surfaceTint: Color(0xff96cdf8),
      onPrimary: Color(0xff00344f),
      primaryContainer: Color(0xff004b70),
      onPrimaryContainer: Color(0xffcae6ff),
      secondary: Color(0xffb7c9d9),
      onSecondary: Color(0xff22323f),
      secondaryContainer: Color(0xff384956),
      onSecondaryContainer: Color(0xffd3e5f6),
      tertiary: Color(0xffcfc0e8),
      onTertiary: Color(0xff362b4a),
      tertiaryContainer: Color(0xff4d4162),
      onTertiaryContainer: Color(0xffebdcff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff101417),
      onBackground: Color(0xffe0e3e8),
      surface: Color(0xff101417),
      onSurface: Color(0xffe0e3e8),
      surfaceVariant: Color(0xff41474d),
      onSurfaceVariant: Color(0xffc1c7ce),
      outline: Color(0xff8b9198),
      outlineVariant: Color(0xff41474d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e3e8),
      inverseOnSurface: Color(0xff2d3135),
      inversePrimary: Color(0xff28638a),
      primaryFixed: Color(0xffcae6ff),
      onPrimaryFixed: Color(0xff001e30),
      primaryFixedDim: Color(0xff96cdf8),
      onPrimaryFixedVariant: Color(0xff004b70),
      secondaryFixed: Color(0xffd3e5f6),
      onSecondaryFixed: Color(0xff0c1d29),
      secondaryFixedDim: Color(0xffb7c9d9),
      onSecondaryFixedVariant: Color(0xff384956),
      tertiaryFixed: Color(0xffebdcff),
      onTertiaryFixed: Color(0xff201634),
      tertiaryFixedDim: Color(0xffcfc0e8),
      onTertiaryFixedVariant: Color(0xff4d4162),
      surfaceDim: Color(0xff101417),
      surfaceBright: Color(0xff363a3e),
      surfaceContainerLowest: Color(0xff0b0f12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff262a2e),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff9ad1fc),
      surfaceTint: Color(0xff96cdf8),
      onPrimary: Color(0xff001828),
      primaryContainer: Color(0xff6096bf),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffbccddd),
      onSecondary: Color(0xff061824),
      secondaryContainer: Color(0xff8293a2),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffd4c4ec),
      onTertiary: Color(0xff1b102f),
      tertiaryContainer: Color(0xff988ab0),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff101417),
      onBackground: Color(0xffe0e3e8),
      surface: Color(0xff101417),
      onSurface: Color(0xfff9fbff),
      surfaceVariant: Color(0xff41474d),
      onSurfaceVariant: Color(0xffc6cbd2),
      outline: Color(0xff9ea3aa),
      outlineVariant: Color(0xff7e848a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e3e8),
      inverseOnSurface: Color(0xff262a2e),
      inversePrimary: Color(0xff004d72),
      primaryFixed: Color(0xffcae6ff),
      onPrimaryFixed: Color(0xff001320),
      primaryFixedDim: Color(0xff96cdf8),
      onPrimaryFixedVariant: Color(0xff003a57),
      secondaryFixed: Color(0xffd3e5f6),
      onSecondaryFixed: Color(0xff02131e),
      secondaryFixedDim: Color(0xffb7c9d9),
      onSecondaryFixedVariant: Color(0xff283845),
      tertiaryFixed: Color(0xffebdcff),
      onTertiaryFixed: Color(0xff160b29),
      tertiaryFixedDim: Color(0xffcfc0e8),
      onTertiaryFixedVariant: Color(0xff3c3151),
      surfaceDim: Color(0xff101417),
      surfaceBright: Color(0xff363a3e),
      surfaceContainerLowest: Color(0xff0b0f12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff262a2e),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff9fbff),
      surfaceTint: Color(0xff96cdf8),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff9ad1fc),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff9fbff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffbccddd),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9fe),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffd4c4ec),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff101417),
      onBackground: Color(0xffe0e3e8),
      surface: Color(0xff101417),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff41474d),
      onSurfaceVariant: Color(0xfff9fbff),
      outline: Color(0xffc6cbd2),
      outlineVariant: Color(0xffc6cbd2),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e3e8),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff002d45),
      primaryFixed: Color(0xffd3eaff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff9ad1fc),
      onPrimaryFixedVariant: Color(0xff001828),
      secondaryFixed: Color(0xffd8e9fa),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffbccddd),
      onSecondaryFixedVariant: Color(0xff061824),
      tertiaryFixed: Color(0xffeee2ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffd4c4ec),
      onTertiaryFixedVariant: Color(0xff1b102f),
      surfaceDim: Color(0xff101417),
      surfaceBright: Color(0xff363a3e),
      surfaceContainerLowest: Color(0xff0b0f12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff262a2e),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary, 
    required this.surfaceTint, 
    required this.onPrimary, 
    required this.primaryContainer, 
    required this.onPrimaryContainer, 
    required this.secondary, 
    required this.onSecondary, 
    required this.secondaryContainer, 
    required this.onSecondaryContainer, 
    required this.tertiary, 
    required this.onTertiary, 
    required this.tertiaryContainer, 
    required this.onTertiaryContainer, 
    required this.error, 
    required this.onError, 
    required this.errorContainer, 
    required this.onErrorContainer, 
    required this.background, 
    required this.onBackground, 
    required this.surface, 
    required this.onSurface, 
    required this.surfaceVariant, 
    required this.onSurfaceVariant, 
    required this.outline, 
    required this.outlineVariant, 
    required this.shadow, 
    required this.scrim, 
    required this.inverseSurface, 
    required this.inverseOnSurface, 
    required this.inversePrimary, 
    required this.primaryFixed, 
    required this.onPrimaryFixed, 
    required this.primaryFixedDim, 
    required this.onPrimaryFixedVariant, 
    required this.secondaryFixed, 
    required this.onSecondaryFixed, 
    required this.secondaryFixedDim, 
    required this.onSecondaryFixedVariant, 
    required this.tertiaryFixed, 
    required this.onTertiaryFixed, 
    required this.tertiaryFixedDim, 
    required this.onTertiaryFixedVariant, 
    required this.surfaceDim, 
    required this.surfaceBright, 
    required this.surfaceContainerLowest, 
    required this.surfaceContainerLow, 
    required this.surfaceContainer, 
    required this.surfaceContainerHigh, 
    required this.surfaceContainerHighest, 
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      surface: surface,
      onSurface: onSurface,
      surfaceContainerHighest: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
