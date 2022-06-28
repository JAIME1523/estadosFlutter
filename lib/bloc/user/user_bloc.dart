import 'package:bloc/bloc.dart';
import 'package:estados/models/usuario.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInictialState()) {
    on<ActiviteUser>((event, emit) {
      emit(UserSetState(event.user));
    });

    on<ChangeUserEge>((event, emit) {
      if (!state.existUser) return;
      emit(UserSetState(state.user!.copyWhith(edad: event.age)));
    });

    //manejador del evento
    on<AddProfecion>((event, emit) {
       if (!state.existUser) return;
        List<String> addList = state.user!.profeciones;
        addList.add('Profecion ${state.user!.profeciones.length + 1}');

       emit(UserSetState(state.user!.copyWhith(profeciones: addList)));
    });
    on<DeleteUser>((event, emit){
       if (!state.existUser) return;
       emit(const UserInictialState());

// UserInictialState
    });
  }
}
