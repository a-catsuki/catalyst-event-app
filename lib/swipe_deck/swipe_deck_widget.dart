import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/swipe_event_card/swipe_event_card_widget.dart';
import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'swipe_deck_model.dart';
export 'swipe_deck_model.dart';

class SwipeDeckWidget extends StatefulWidget {
  const SwipeDeckWidget({super.key});

  @override
  State<SwipeDeckWidget> createState() => _SwipeDeckWidgetState();
}

class _SwipeDeckWidgetState extends State<SwipeDeckWidget> {
  late SwipeDeckModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwipeDeckModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<EventsRow>>(
      future: EventsTable().queryRows(
        queryFn: (q) => q.order('likes'),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<EventsRow> swipeDeckEventsRowList = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: FutureBuilder<List<UsersRow>>(
                future: UsersTable().querySingleRow(
                  queryFn: (q) => q.eq(
                    'id',
                    currentUserUid,
                  ),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  List<UsersRow> swipeableStackUsersRowList = snapshot.data!;

                  final swipeableStackUsersRow =
                      swipeableStackUsersRowList.isNotEmpty
                          ? swipeableStackUsersRowList.first
                          : null;

                  return Builder(
                    builder: (context) {
                      final events = swipeDeckEventsRowList.toList();

                      return FlutterFlowSwipeableStack(
                        onSwipeFn: (index) {},
                        onLeftSwipe: (index) async {
                          final eventsItem = events[index];
                          await Future.wait([
                            Future(() async {
                              await UsersTable().update(
                                data: {
                                  'savedEvents': functions.append(
                                      swipeableStackUsersRow!.savedEvents
                                          .toList(),
                                      events[index].id),
                                },
                                matchingRows: (rows) => rows.eq(
                                  'id',
                                  currentUserUid,
                                ),
                              );
                            }),
                            Future(() async {
                              await EventsTable().update(
                                data: {
                                  'likes':
                                      functions.increment(events[index].likes),
                                },
                                matchingRows: (rows) => rows.eq(
                                  'id',
                                  events[index].id,
                                ),
                              );
                            }),
                          ]);
                        },
                        onRightSwipe: (index) async {
                          final eventsItem = events[index];
                          await Future.wait([
                            Future(() async {
                              await UsersTable().update(
                                data: {
                                  'savedEvents': functions.append(
                                      swipeableStackUsersRow!.savedEvents
                                          .toList(),
                                      events[index].id),
                                },
                                matchingRows: (rows) => rows.eq(
                                  'id',
                                  currentUserUid,
                                ),
                              );
                            }),
                            Future(() async {
                              await EventsTable().update(
                                data: {
                                  'likes':
                                      functions.increment(events[index].likes),
                                },
                                matchingRows: (rows) => rows.eq(
                                  'id',
                                  events[index].id,
                                ),
                              );
                            }),
                          ]);
                        },
                        onUpSwipe: (index) {},
                        onDownSwipe: (index) {},
                        itemBuilder: (context, eventsIndex) {
                          final eventsItem = events[eventsIndex];
                          return SwipeEventCardWidget(
                            key: Key(
                                'Keypae_${eventsIndex}_of_${events.length}'),
                            eventId: eventsItem.id,
                          );
                        },
                        itemCount: events.length,
                        controller: _model.swipeableStackController,
                        loop: false,
                        cardDisplayCount: 5,
                        scale: 0.91,
                        threshold: 0.3,
                      );
                    },
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
