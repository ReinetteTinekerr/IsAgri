import 'package:dartz/dartz.dart';
import 'package:mvvm_skeleton/src/data/network/failure.dart';

abstract class BaseUseCase<In, Out> {
  Future<Either<Failure, Out>> call(In input);
}
