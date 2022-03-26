import 'package:flutter/material.dart';
import 'generic_card.dart';

/// Manages the 'Current account' section inside the user's page (accessible
/// through the top-right widget with the user picture)
class InfoDeskCard extends GenericCard {
  InfoDeskCard({Key key}) : super(key: key);

  InfoDeskCard.fromEditingInformation(
      Key key, bool editingMode, Function onDelete)
      : super.fromEditingInformation(key, editingMode, onDelete);

  @override
  Widget buildCardContent(BuildContext context) {
    return Column(
      children: <Container>[
        Container(
          margin: const EdgeInsets.only(top: 20.0, bottom: 0.0, left: 20.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text('Horário',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .apply(fontSizeDelta: 0)),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 13.0, bottom: 0.0, left: 20.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text('Atendimento presencial e telefónico',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .apply(fontSizeDelta: -4)),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8, bottom: 0, left: 20.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text('9:30h - 13:00h | 14:00h - 17:30h',
                style: Theme.of(context).textTheme.headline3),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 30, bottom: 0.0, left: 20.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text('Telefone',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .apply(fontSizeDelta: 0)),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8, bottom: 0, left: 20.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text('+351 225 081 400',
                style: Theme.of(context).textTheme.headline3),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8, bottom: 0, left: 20.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text('+351 225 081 895',
                style: Theme.of(context).textTheme.headline3),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 30, bottom: 0, left: 20.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text('Email',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .apply(fontSizeDelta: 0)),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8, bottom: 0, left: 20.0),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text('feup@fe.up.pt',
                  style: Theme.of(context).textTheme.headline3)),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8, bottom: 8, left: 20.0),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text('infodesk@fe.up.pt',
                  style: Theme.of(context).textTheme.headline3)),
        ),
      ],
    );
  }

  @override
  String getTitle() => 'Infodesk';

  @override
  onClick(BuildContext context) {}
}
