import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:math_4_maze/l10n/app_localizations.dart';

import '../../domain/usecases/preferences_usecases.dart';
import '../../data/request/base_request.dart';
import '../../utils/result.dart';
import '../../../l10n/l10n.dart';
import 'preferences_state_new.dart';

class PreferencesCubit extends HydratedCubit<PreferencesState> {
  final ChangeLanguageUseCase _changeLanguageUseCase;
  final GetLanguageUseCase _getLanguageUseCase;
  final ToggleThemeUseCase _toggleThemeUseCase;
  final GetThemeUseCase _getThemeUseCase;

  PreferencesCubit(
    this._changeLanguageUseCase,
    this._getLanguageUseCase,
    this._toggleThemeUseCase,
    this._getThemeUseCase,
  ) : super(const PreferencesState()) {
    _initializeState();
  }

  Future<void> _initializeState() async {
    emit(state.copyWith(isLoading: true));

    final languageResult = await _getLanguageUseCase();
    final themeResult = await _getThemeUseCase();

    languageResult.when(
      success: (language) {
        BaseRequestDefaults.instance.setLanguage(
          language == 'ar' ? 'ar-eg' : 'en-us',
        );

        themeResult.when(
          success: (isDark) {
            emit(state.copyWith(
              language: language,
              darkTheme: isDark,
              isLoading: false,
              error: null,
            ));
          },
          failure: (message, exception) {
            emit(state.copyWith(
              language: language,
              isLoading: false,
              error: message,
            ));
          },
        );
      },
      failure: (message, exception) {
        emit(state.copyWith(
          isLoading: false,
          error: message,
        ));
      },
    );
  }

  Future<void> setLanguage(String code) async {
    final language = AppLocalizations.supportedLocales
                .indexWhere((element) => element.languageCode == code) ==
            -1
        ? 'en'
        : code;

    emit(state.copyWith(isLoading: true));

    final result = await _changeLanguageUseCase(language);

    result.when(
      success: (data) {
        BaseRequestDefaults.instance.setLanguage(
          language == 'ar' ? 'ar-eg' : 'en-us',
        );

        emit(state.copyWith(
          language: language,
          isLoading: false,
          error: null,
        ));
      },
      failure: (message, exception) {
        emit(state.copyWith(
          isLoading: false,
          error: message,
        ));
      },
    );
  }

  Future<void> toggleLanguage() async {
    await setLanguage(state.language == 'ar' ? 'en' : 'ar');
  }

  Future<void> toggleTheme() async {
    emit(state.copyWith(isLoading: true));

    final result = await _toggleThemeUseCase();

    result.when(
      success: (isDark) {
        emit(state.copyWith(
          darkTheme: isDark,
          isLoading: false,
          error: null,
        ));
      },
      failure: (message, exception) {
        emit(state.copyWith(
          isLoading: false,
          error: message,
        ));
      },
    );
  }

  void clearUserData() {
    emit(const PreferencesState());
  }

  @override
  PreferencesState? fromJson(Map<String, dynamic> json) {
    try {
      return PreferencesState.fromJson(json);
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(PreferencesState state) {
    try {
      return state.toJson();
    } catch (e) {
      return null;
    }
  }
}
