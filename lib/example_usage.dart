import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../di/injection_container.dart';
import '../core/logic/preferences_cubit/preferences_cubit.dart';
import '../core/logic/preferences_cubit/preferences_state_new.dart';

class ExampleUsageWidget extends StatelessWidget {
  const ExampleUsageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<PreferencesCubit>(),
      child: BlocBuilder<PreferencesCubit, PreferencesState>(
        builder: (context, state) {
          final cubit = context.read<PreferencesCubit>();

          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.error != null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Error: ${state.error}'),
                  ElevatedButton(
                    onPressed: () => cubit.setLanguage(state.language),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }

          return Scaffold(
            appBar: AppBar(
              title: Text(state.ltr ? 'Settings' : 'الإعدادات'),
            ),
            body: Column(
              children: [
                ListTile(
                  title: Text(state.ltr ? 'Language' : 'اللغة'),
                  subtitle: Text(state.ltr ? 'English' : 'العربية'),
                  trailing: Switch(
                    value: state.rtl,
                    onChanged: (value) => cubit.toggleLanguage(),
                  ),
                ),
                ListTile(
                  title: Text(state.ltr ? 'Dark Theme' : 'الوضع الليلي'),
                  trailing: Switch(
                    value: state.darkTheme,
                    onChanged: (value) => cubit.toggleTheme(),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => cubit.setLanguage('ar'),
                  child: const Text('Set Arabic'),
                ),
                ElevatedButton(
                  onPressed: () => cubit.setLanguage('en'),
                  child: const Text('Set English'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
