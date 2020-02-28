import 'package:equatable/equatable.dart';

abstract class SignupEvent extends Equatable {
  const SignupEvent();
}

class CreatAccountEvent extends SignupEvent {
  final Map<String, dynamic> account;

  CreatAccountEvent(this.account);
  @override
  List<Object> get props => [account];
}
