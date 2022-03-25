import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mvvm_skeleton/src/presentation/common/state_renderer/state_renderer.dart';
import 'package:mvvm_skeleton/src/presentation/resources/strings_manager.dart';
import 'package:mvvm_skeleton/src/presentation/resources/values_manager.dart';

part 'flow_state.freezed.dart';

@freezed
class FlowState with _$FlowState {
  const FlowState._();
  const factory FlowState.loading(
      String? message, StateRendererType stateRendererType) = LoadingState;
  const factory FlowState.error(
      String? message, StateRendererType stateRendererType) = ErrorState;
  const factory FlowState.content(
      String? message,
      [@Default(StateRendererType.CONTENT_SCREEN_STATE)
          StateRendererType stateRendererType]) = ContentState;
  const factory FlowState.empty(
      String? message,
      [@Default(StateRendererType.EMPTY_SCREEN_STATE)
          StateRendererType stateRendererType]) = EmptyState;
  const factory FlowState.success(
      String? message, StateRendererType stateRendererType) = SuccessState;
}

extension FlowStateExtension on FlowState {
  Widget getScreenWidget(BuildContext context, Widget contentScreenWidget,
      Function retryActionCallBack) {
    return when(loading: (message, stateRendererType) {
      if (stateRendererType == StateRendererType.POPUP_LOADING_STATE) {
        // showing popup dialog
        showPopUp(context, stateRendererType, message);
        // return the content ui of the screen
        return contentScreenWidget;
      } else // StateRendererType.FULL_SCREEN_LOADING_STATE
      {
        return StateRenderer(
            stateRendererType: stateRendererType,
            message: message,
            retryActionFunction: retryActionCallBack);
      }
    }, error: (message, stateRendererType) {
      dismissDialog(context);
      if (stateRendererType == StateRendererType.POPUP_ERROR_STATE) {
        // showing popup dialog
        showPopUp(context, stateRendererType, message);
        // return the content ui of the screen
        return contentScreenWidget;
      } else // StateRendererType.FULL_SCREEN_ERROR_STATE
      {
        return StateRenderer(
            stateRendererType: stateRendererType,
            message: message,
            retryActionFunction: retryActionCallBack);
      }
    }, content: (message, stateRendererType) {
      dismissDialog(context);
      return contentScreenWidget;
    }, empty: (message, stateRendererType) {
      return StateRenderer(
          stateRendererType: stateRendererType,
          message: message,
          retryActionFunction: retryActionCallBack);
    }, success: (message, stateRendererType) {
      // i should check if we are showing loading popup to remove it before showing success popup
      dismissDialog(context);

      // show popup
      showPopUp(context, StateRendererType.POPUP_SUCCESS, message,
          title: AppStrings.success);
      // return content ui of the screen
      return contentScreenWidget;
    });
  }

  dismissDialog(BuildContext context) {
    if (_isThereCurrentDialogShowing(context)) {
      Navigator.of(context, rootNavigator: true).pop(true);
    }
  }

  _isThereCurrentDialogShowing(BuildContext context) =>
      ModalRoute.of(context)?.isCurrent != true;

  showPopUp(BuildContext context, StateRendererType stateRendererType,
      String? message,
      {String title = EMPTY}) {
    WidgetsBinding.instance?.addPostFrameCallback((_) => showDialog(
        context: context,
        builder: (BuildContext context) => StateRenderer(
              stateRendererType: stateRendererType,
              message: message ?? EMPTY,
              title: title,
              retryActionFunction: () {},
            )));
  }
}
