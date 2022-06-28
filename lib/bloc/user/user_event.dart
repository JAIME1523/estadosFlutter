part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActiviteUser extends UserEvent {
  //siempre tiene que recibir datos
  final Usuario user;
  ActiviteUser(this.user);
}

class ChangeUserEge extends UserEvent {
  final int age;

  ChangeUserEge(this.age);
}

class AddProfecion extends UserEvent {
  //final String name;
  AddProfecion();
}

class DeleteUser extends UserEvent {

}
