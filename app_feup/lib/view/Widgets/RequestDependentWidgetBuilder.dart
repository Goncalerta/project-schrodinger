import 'package:app_feup/controller/local_storage/AppLastUserInfoUpdateDatabase.dart';
import 'package:app_feup/model/AppState.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';

class RequestDependentWidgetBuilder extends StatelessWidget {
  const RequestDependentWidgetBuilder({
    Key key,
    @required this.context,
    @required this.status,
    @required this.contentGenerator,
    @required this.content,
    @required this.contentChecker,
    @required this.onNullContent,
  }) : super(key: key);

  final BuildContext context;
  final RequestStatus status;
  final Widget Function(dynamic, BuildContext) contentGenerator;
  final content;
  final bool contentChecker;
  final Widget onNullContent;
  static final AppLastUserInfoUpdateDatabase lastUpdateDatabase = AppLastUserInfoUpdateDatabase();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DateTime>(
      converter: (store) => store.state.content['lastUserInfoUpdateTime'],
      builder: (context, lastUpdateTime){
        switch (status) {
          case RequestStatus.SUCCESSFUL:
          case RequestStatus.NONE:
            return contentChecker ? 
            contentGenerator(content, context): onNullContent;
          case RequestStatus.BUSY:
            if(lastUpdateTime != null){
              return contentChecker ? 
              contentGenerator(content, context)
                : onNullContent;
            }
            return contentChecker ?
            contentGenerator(content, context)
                : Center(child: CircularProgressIndicator());
          case RequestStatus.FAILED:
          default:
            return contentChecker ?
            contentGenerator(content, context)
                : Center(child: Text(
                "Comunication error. Please check your internet connection.",
                style: Theme
                    .of(context)
                    .textTheme
                    .display1));
        }
      },
    );

  }
}