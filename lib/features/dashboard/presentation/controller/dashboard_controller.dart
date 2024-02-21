import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_arc/features/dashboard/presentation/state/dashboard_state.dart';

class DashboardController extends Cubit<DashboardState> {
  DashboardController():super(const DashboardState());

  void setPageIndex(int value){
    emit(state.copyWith(pageIndex: value));
  }
}