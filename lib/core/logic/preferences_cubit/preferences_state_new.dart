import 'package:equatable/equatable.dart';

class PreferencesState extends Equatable {
  const PreferencesState({
    this.language = 'en',
    this.darkTheme = false,
    this.isLoading = false,
    this.error,
  });

  final String language;
  final bool darkTheme;
  final bool isLoading;
  final String? error;

  PreferencesState copyWith({
    String? language,
    bool? darkTheme,
    bool? isLoading,
    String? error,
  }) {
    return PreferencesState(
      language: language ?? this.language,
      darkTheme: darkTheme ?? this.darkTheme,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'language': language,
      'darkTheme': darkTheme,
    };
  }

  factory PreferencesState.fromJson(Map<String, dynamic> json) {
    return PreferencesState(
      language: json['language'] as String? ?? 'en',
      darkTheme: json['darkTheme'] as bool? ?? false,
    );
  }

  @override
  List<Object?> get props => [language, darkTheme, isLoading, error];
}

enum Language { english, arabic }

extension PreferencesStateExtension on PreferencesState {
  bool get ltr => language == 'en';
  bool get rtl => language == 'ar';

  String get languageCode => ltr ? 'en-us' : 'ar-eg';
  String get languageName => ltr ? 'en' : 'ar';

  Language get currentLanguage =>
      language == 'ar' ? Language.arabic : Language.english;
}
