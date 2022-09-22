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

/*
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class NavState {}

abstract class NavEvent {}

class HomeEvent extends NavEvent {}

class ProductEvent extends NavEvent {}

class HomeState extends NavState {}

class ProductState extends NavState {}

class NavRouteBloc extends Bloc<NavEvent, NavState> {
  NavRouteBloc() : super(HomeState()) {
    NavState mapEventToState(NavEvent event) {
      if(event is HomeEvent){
        return HomeState();
      }
      else {
        return ProductState();
      }
    }

    on<NavEvent>((event, emit) async {
      emit(mapEventToState(event));
    });
  }
}



 */
