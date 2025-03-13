import 'package:blog/core/secrets/app_secrets.dart';
import 'package:blog/core/theme/app_theme.dart';
import 'package:blog/features/auth/data/datasource/auth_remote_datasource.dart';
import 'package:blog/features/auth/data/repository/auth_repository_imple.dart';
import 'package:blog/features/auth/domain/usecases/user_sign_up.dart';
import 'package:blog/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:blog/features/auth/presentation/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final supabase = await Supabase.initialize(
    url: AppSecrets.url,
    anonKey: AppSecrets.annonkey,
  );
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (_) => AuthBloc(
                userSignUp: UserSignUp(
                  AuthRepositoryImple(
                    remoteDataSource: AuthRemoteDatasourceImpl(
                      supabaseClient: supabase.client,
                    ),
                  ),
                ),
              ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.darkThemeMode,
      home: SignupPage(),
    );
  }
}
