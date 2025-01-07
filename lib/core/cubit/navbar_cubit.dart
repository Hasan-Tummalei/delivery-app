import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navbar_state.dart';

class NavbarCubit extends Cubit<NavbarState> {
  NavbarCubit() : super(const NavbarState(selectedIndex: 0));

  void selectPage(int index) {
    emit(NavbarState(selectedIndex: index));
  }
}
