import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'event_component_model.dart';
export 'event_component_model.dart';

class EventComponentWidget extends StatefulWidget {
  const EventComponentWidget({
    super.key,
    this.eventId,
  });

  final String? eventId;

  @override
  State<EventComponentWidget> createState() => _EventComponentWidgetState();
}

class _EventComponentWidgetState extends State<EventComponentWidget> {
  late EventComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<EventsRow>>(
      future: EventsTable().querySingleRow(
        queryFn: (q) => q.eq(
          'id',
          widget.eventId,
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
        List<EventsRow> columnEventsRowList = snapshot.data!;

        final columnEventsRow =
            columnEventsRowList.isNotEmpty ? columnEventsRowList.first : null;

        return Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 5.0),
                  child: Text(
                    valueOrDefault<String>(
                      columnEventsRow?.name,
                      'Event Name',
                    ),
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineLargeFamily,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).headlineLargeFamily),
                        ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(23.0, 0.0, 0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 23.0,
                decoration: const BoxDecoration(
                  color: Color(0x00FFFFFF),
                ),
                child: Builder(
                  builder: (context) {
                    final clubs = columnEventsRow?.organisers.toList() ?? [];

                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(clubs.length, (clubsIndex) {
                        final clubsItem = clubs[clubsIndex];
                        return Container(
                          width: 81.0,
                          height: 23.0,
                          decoration: const BoxDecoration(
                            color: Color(0x007B7B7B),
                          ),
                          child: Text(
                            'club name',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                        );
                      }),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              23.0, 0.0, 0.0, 0.0),
                          child: Icon(
                            Icons.date_range_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 16.0,
                          ),
                        ),
                        Text(
                          '${dateTimeFormat(
                            "MMMEd",
                            columnEventsRow?.startDateTime,
                            locale: FFLocalizations.of(context).languageCode,
                          )} ${dateTimeFormat(
                            "jm",
                            columnEventsRow?.startDateTime,
                            locale: FFLocalizations.of(context).languageCode,
                          )}',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 10.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              23.0, 0.0, 0.0, 0.0),
                          child: Icon(
                            Icons.calendar_month,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 16.0,
                          ),
                        ),
                        Text(
                          '${dateTimeFormat(
                            "MMMEd",
                            columnEventsRow?.endDateTime,
                            locale: FFLocalizations.of(context).languageCode,
                          )} ${dateTimeFormat(
                            "jm",
                            columnEventsRow?.endDateTime,
                            locale: FFLocalizations.of(context).languageCode,
                          )}',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 10.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              23.0, 0.0, 0.0, 0.0),
                          child: Icon(
                            Icons.outlined_flag,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 16.0,
                          ),
                        ),
                        Builder(
                          builder: (context) {
                            final universities =
                                columnEventsRow?.universities.toList() ?? [];

                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(universities.length,
                                  (universitiesIndex) {
                                final universitiesItem =
                                    universities[universitiesIndex];
                                return Text(
                                  universitiesItem,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        fontSize: 10.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                );
                              }).divide(const SizedBox(width: 5.0)),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              23.0, 0.0, 0.0, 0.0),
                          child: Icon(
                            Icons.favorite_border_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 16.0,
                          ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            columnEventsRow?.likes.toString(),
                            '0',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 10.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              23.0, 0.0, 0.0, 0.0),
                          child: Icon(
                            Icons.location_on_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 16.0,
                          ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            columnEventsRow?.venue,
                            'venue',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 10.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
