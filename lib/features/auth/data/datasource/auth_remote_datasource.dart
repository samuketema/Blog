import 'package:blog/core/error/exception.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDatasource {
  signupWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });
  loginWithEmailPassword({required String email, required String password});
}

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  final SupabaseClient supabaseClient;
  AuthRemoteDatasourceImpl({required this.supabaseClient});
  @override
  loginWithEmailPassword({required String email, required String password}) {
    throw UnimplementedError();
  }

  @override
  signupWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final responce = await supabaseClient.auth.signUp(
        password: password,
        email: email,
        data: {'name': name},
      );
      if (responce.user == null) {
        return  ServerException('The user is null');
      }
      throw  responce.user!.id;
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
   