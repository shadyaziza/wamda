import 'package:equatable/equatable.dart';

abstract class SignupState extends Equatable {
  const SignupState();
}

class InitialSignupState extends SignupState {
  @override
  List<Object> get props => [];
}

class AttemptingSignupState extends SignupState {
  @override
  List<Object> get props => null;
}

class SignUpSuccessState extends SignupState {
  final Map<String, dynamic> user;

  SignUpSuccessState(this.user);
  @override
  List<Object> get props => [user];
}

class SignUpFailedState extends SignupState {
  final String message;

  SignUpFailedState(this.message);
  @override
  // TODO: implement props
  List<Object> get props => [];
}
