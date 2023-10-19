import 'package:fake_store_api/domain/fake/fake.dart';
import 'package:fake_store_api/infrastructure/api_function.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
      : super(
          HomeState(
            detailList: [],
          ),
        ) {
    on<HomeEvent>(
      (event, emit) async {
        List<Fake> data = await fetchProductsFromFakeStoreApi();
        emit(
          HomeState(detailList: data),
        );
      },
    );
  }
}
