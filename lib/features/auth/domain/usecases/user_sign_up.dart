import 'package:blog/core/error/failure.dart';
import 'package:blog/core/usecase/usecase.dart';
import 'package:blog/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/src/either.dart';

class UserSignUp implements Usecase<String , UserSignUpParams> {
  AuthRepository authRepository;
  UserSignUp(this.authRepository);
  @override
  Future<Either<Failure, String>> call(UserSignUpParams params) async{
   return await authRepository.signupWithEmailPassword(name: params.name, email: params.email, password: params.password);
  }
}


class UserSignUpParams {
  final String name;
  final String email;
  final String password;
  UserSignUpParams({
   required  this.name,
   required this.email,
   required  this.password,
});
}
