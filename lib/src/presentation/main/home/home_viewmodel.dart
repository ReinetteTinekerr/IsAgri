import 'package:mvvm_skeleton/src/domain/models/farming_task.dart';
import 'package:mvvm_skeleton/src/presentation/base/base_viewmodel.dart';
import 'package:mvvm_skeleton/src/presentation/common/state_renderer/flow_state.dart';
import 'package:rxdart/rxdart.dart';

class HomeViewModel extends BaseViewModel
    implements HomeViewModelInputs, HomeViewModelOutputs {
  final _dataStreamController = BehaviorSubject<List<FarmingTask>>();

  @override
  void start() {
    _getHome();
  }

  void _getHome() async {
    // inputState
    //     .add(const EmptyState('Empty', StateRendererType.EMPTY_SCREEN_STATE));
    inputState.add(const ContentState(null));
    // inputState.add(LoadingState(
    //     stateRendererType: StateRendererType.FULL_SCREEN_LOADING_STATE));

    // (await _homeUseCase.execute(Void)).fold((failure) {
    //   inputState.add(ErrorState(
    //       StateRendererType.FULL_SCREEN_ERROR_STATE, failure.message));
    // }, (homeObject) {
    //   inputState.add(ContentState());
    //   inputHomeData.add(HomeViewObject(homeObject.data.stores,
    //       homeObject.data.services, homeObject.data.banners));
    // });
  }

  @override
  void dispose() {
    _dataStreamController.close();
    super.dispose();
  }

  @override
  Sink get inputHomeData => _dataStreamController.sink;

  @override
  Stream<List<FarmingTask>> get outputCalendarTasks =>
      _dataStreamController.stream.map((data) => data);
}

abstract class HomeViewModelInputs {
  Sink get inputHomeData;
}

abstract class HomeViewModelOutputs {
  Stream<List<FarmingTask>> get outputCalendarTasks;
}
