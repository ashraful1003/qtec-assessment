import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'nav_event.dart';

part 'nav_state.dart';

class NavBloc extends Bloc<NavEvent, NavState> {
  NavBloc() : super(HomeState()) {
    NavState mapEventToState(NavEvent event) {
      if (event is ProductEvent) {
        return ProductState(event.slug);
      } else {
        return HomeState();
      }
    }

    on<NavEvent>((event, emit) {
      // TODO: implement event handler
      emit(mapEventToState(event));
    });
  }
}
