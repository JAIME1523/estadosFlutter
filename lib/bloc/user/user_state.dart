part of 'user_bloc.dart';

@immutable
abstract class UserState {
  final bool existUser;
  final Usuario? user;

  const UserState(this.existUser, this.user);
}

class UserInictialState extends UserState {
  // const UserInictialState(super.existUser =  false, super.user) : super(false, null);
//  const UserInictialState(): super(existUser: false , user :null);
  const UserInictialState() : super(false, null);
}

class UserSetState extends UserState {
  final Usuario newUser;
// super(existUser: false , user :null);
 const UserSetState(this.newUser) : super(true, newUser);
}
