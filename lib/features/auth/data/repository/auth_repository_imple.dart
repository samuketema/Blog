// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:blog/core/error/exception.dart';
import 'package:fpdart/fpdart.dart';
import 'package:blog/core/error/failure.dart';
import 'package:blog/features/auth/data/datasource/auth_remote_datasource.dart';
import 'package:blog/features/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImple implements AuthRepository {
  final AuthRemoteDatasource remoteDataSource;
  AuthRepositoryImple({
    required this.remoteDataSource,
  });
  @override
  Future<Either<Failure, String>> loginWithEmailPassword({
    required String email,
    required String password,
  }) {
    // TODO: implement loginWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> signupWithEmailPassword({
    required String name,
    required String email,
    required String password,
  })async {
    try {
      final userId = await remoteDataSource.signupWithEmailPassword(name: name, email: email, password: password);
      return right(userId);
    } on ServerException catch  (e) {
      return left(Failure(e.message));
    }
  }
}
