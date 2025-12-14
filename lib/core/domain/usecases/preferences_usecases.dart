import '../../data/repositories/preferences_repository.dart';
import '../../utils/result.dart';

class ChangeLanguageUseCase {
  final PreferencesRepository _repository;

  ChangeLanguageUseCase(this._repository);

  Future<Result<void>> call(String languageCode) async {
    try {
      await _repository.setLanguage(languageCode);
      return const Success(null);
    } catch (e) {
      return Failure('Failed to change language: ${e.toString()}');
    }
  }
}

class GetLanguageUseCase {
  final PreferencesRepository _repository;

  GetLanguageUseCase(this._repository);

  Future<Result<String>> call() async {
    try {
      final language = await _repository.getLanguage();
      return Success(language ?? 'en');
    } catch (e) {
      return Failure('Failed to get language: ${e.toString()}');
    }
  }
}

class ToggleThemeUseCase {
  final PreferencesRepository _repository;

  ToggleThemeUseCase(this._repository);

  Future<Result<bool>> call() async {
    try {
      final currentTheme = await _repository.isDarkMode();
      final newTheme = !currentTheme;
      await _repository.setDarkMode(newTheme);
      return Success(newTheme);
    } catch (e) {
      return Failure('Failed to toggle theme: ${e.toString()}');
    }
  }
}

class GetThemeUseCase {
  final PreferencesRepository _repository;

  GetThemeUseCase(this._repository);

  Future<Result<bool>> call() async {
    try {
      final isDark = await _repository.isDarkMode();
      return Success(isDark);
    } catch (e) {
      return Failure('Failed to get theme: ${e.toString()}');
    }
  }
}
