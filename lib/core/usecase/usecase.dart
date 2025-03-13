// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fpdart/fpdart.dart';

import 'package:blog/core/error/failure.dart';

abstract interface class Usecase<SuccesType,Params> {
  Future<Either<Failure,SuccesType>> call(Params params);
}

