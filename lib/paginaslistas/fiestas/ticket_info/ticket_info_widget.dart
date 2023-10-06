import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'ticket_info_model.dart';
export 'ticket_info_model.dart';

class TicketInfoWidget extends StatefulWidget {
  const TicketInfoWidget({
    Key? key,
    required this.tiketParametro,
    required this.fiestaParametro,
  }) : super(key: key);

  final TicketsDeLaFiestaRecord? tiketParametro;
  final FiestasRecord? fiestaParametro;

  @override
  _TicketInfoWidgetState createState() => _TicketInfoWidgetState();
}

class _TicketInfoWidgetState extends State<TicketInfoWidget>
    with TickerProviderStateMixin {
  late TicketInfoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'stackOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: Offset(0.0, 1000.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'iconOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.3,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.3,
          end: 1.0,
        ),
      ],
    ),
    'iconOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.3,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.3,
          end: 1.0,
        ),
      ],
    ),
    'iconOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.3,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.3,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TicketInfoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<CarritoRecord>>(
      stream: queryCarritoRecord(
        queryBuilder: (carritoRecord) => carritoRecord
            .where(
              'creador',
              isEqualTo: currentUserReference,
            )
            .where(
              'IsActive',
              isEqualTo: true,
            ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: Color(0xFF1D0526),
            body: Center(
              child: SizedBox(
                width: 20.0,
                height: 20.0,
                child: SpinKitFadingFour(
                  color: Color(0xFFFF7400),
                  size: 20.0,
                ),
              ),
            ),
          );
        }
        List<CarritoRecord> ticketInfoCarritoRecordList = snapshot.data!;
        final ticketInfoCarritoRecord = ticketInfoCarritoRecordList.isNotEmpty
            ? ticketInfoCarritoRecordList.first
            : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0xFF1D0526),
            appBar: AppBar(
              backgroundColor: Color(0xFFAE3E05),
              automaticallyImplyLeading: true,
              title: Text(
                'Ticket Seleccionado',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 25.0,
                    ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 4.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 20.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: 669.0,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                              Color(0xFFFF2032),
                                              Color(0xFFFF5800)
                                            ],
                                            stops: [0.2, 0.5, 1.0],
                                            begin:
                                                AlignmentDirectional(1.0, -1.0),
                                            end:
                                                AlignmentDirectional(-1.0, 1.0),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 10.0, 10.0, 10.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 200.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.network(
                                                      widget.fiestaParametro!
                                                          .fotoFiesta,
                                                    ).image,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  3.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          GradientText(
                                                            valueOrDefault<
                                                                String>(
                                                              widget
                                                                  .fiestaParametro
                                                                  ?.nombreFiesta,
                                                              'NombreFiesta',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  fontSize:
                                                                      20.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                ),
                                                            colors: [
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                              Color(0xFF673AB7),
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .warning
                                                            ],
                                                            gradientDirection:
                                                                GradientDirection
                                                                    .ltr,
                                                            gradientType:
                                                                GradientType
                                                                    .linear,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  3.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          GradientText(
                                                            valueOrDefault<
                                                                String>(
                                                              widget
                                                                  .fiestaParametro
                                                                  ?.lugarFiesta,
                                                              'LugarFiesta',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  fontSize:
                                                                      15.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                ),
                                                            colors: [
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                              Color(0xFF673AB7),
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .warning
                                                            ],
                                                            gradientDirection:
                                                                GradientDirection
                                                                    .ltr,
                                                            gradientType:
                                                                GradientType
                                                                    .linear,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              widget
                                                                  .tiketParametro
                                                                  ?.nombre,
                                                              'NombreDelTicket',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  fontSize:
                                                                      20.0,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Icon(
                                                              Icons
                                                                  .attach_money_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 25.0,
                                                            ),
                                                          ),
                                                          Text(
                                                            formatNumber(
                                                              widget
                                                                  .tiketParametro!
                                                                  .precio,
                                                              formatType:
                                                                  FormatType
                                                                      .decimal,
                                                              decimalType:
                                                                  DecimalType
                                                                      .commaDecimal,
                                                              currency: '',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  fontSize:
                                                                      20.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 25.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                30.0,
                                                                20.0,
                                                                0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Icon(
                                                            Icons
                                                                .location_on_outlined,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 25.0,
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'iconOnPageLoadAnimation1']!),
                                                        ),
                                                        SelectionArea(
                                                            child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            widget
                                                                .fiestaParametro
                                                                ?.direccionFiesta,
                                                            'direccion',
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          maxLines: 2,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: Color(
                                                                    0x7BFFFFFF),
                                                                fontSize: 15.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                              ),
                                                        )).animateOnPageLoad(
                                                            animationsMap[
                                                                'textOnPageLoadAnimation1']!),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      20.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child: Icon(
                                                                      Icons
                                                                          .calendar_month,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          20.0,
                                                                    ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'iconOnPageLoadAnimation2']!),
                                                                  ),
                                                                  SelectionArea(
                                                                      child:
                                                                          Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      widget
                                                                          .fiestaParametro
                                                                          ?.fechaFiesta,
                                                                      'fecha',
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              Color(0x7BFFFFFF),
                                                                          fontSize:
                                                                              12.0,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                  )).animateOnPageLoad(
                                                                      animationsMap[
                                                                          'textOnPageLoadAnimation2']!),
                                                                ],
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child: Icon(
                                                                      Icons
                                                                          .access_time,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          20.0,
                                                                    ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'iconOnPageLoadAnimation3']!),
                                                                  ),
                                                                  SelectionArea(
                                                                      child:
                                                                          Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      widget
                                                                          .fiestaParametro
                                                                          ?.horaFiesta,
                                                                      'hora',
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              Color(0x7BFFFFFF),
                                                                          fontSize:
                                                                              12.0,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                  )).animateOnPageLoad(
                                                                      animationsMap[
                                                                          'textOnPageLoadAnimation3']!),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 510.0, 5.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 30.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF1D0526),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      SelectionArea(
                                          child: Text(
                                        '-------------------------------------',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFF1D0526),
                                              letterSpacing: 3.0,
                                            ),
                                      )),
                                      Container(
                                        width: 30.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF1D0526),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 310.0, 5.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 30.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF1D0526),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      SelectionArea(
                                          child: Text(
                                        '------------------------------------',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFF1D0526),
                                              letterSpacing: 3.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      )),
                                      Container(
                                        width: 30.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF1D0526),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 570.0, 0.0, 0.0),
                                  child: StreamBuilder<
                                      List<ListaTicketsCompradosRecord>>(
                                    stream: queryListaTicketsCompradosRecord(
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 20.0,
                                            height: 20.0,
                                            child: SpinKitFadingFour(
                                              color: Color(0xFFFF7400),
                                              size: 20.0,
                                            ),
                                          ),
                                        );
                                      }
                                      List<ListaTicketsCompradosRecord>
                                          rowListaTicketsCompradosRecordList =
                                          snapshot.data!;
                                      final rowListaTicketsCompradosRecord =
                                          rowListaTicketsCompradosRecordList
                                                  .isNotEmpty
                                              ? rowListaTicketsCompradosRecordList
                                                  .first
                                              : null;
                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () async {
                                              if ((ticketInfoCarritoRecord !=
                                                      null) &&
                                                  (rowListaTicketsCompradosRecord !=
                                                      null)) {
                                                var ticketSeleccionadoRecordReference1 =
                                                    TicketSeleccionadoRecord
                                                        .collection
                                                        .doc();
                                                await ticketSeleccionadoRecordReference1
                                                    .set(
                                                        createTicketSeleccionadoRecordData(
                                                  nombre: widget
                                                      .tiketParametro?.nombre,
                                                  info: widget
                                                      .tiketParametro?.info,
                                                  foto: widget.fiestaParametro
                                                      ?.fotoFiesta,
                                                  precio: widget
                                                      .tiketParametro?.precio,
                                                  creador: currentUserReference,
                                                  cantidad: 1,
                                                  nombreFiesta: widget
                                                      .fiestaParametro
                                                      ?.nombreFiesta,
                                                  lugarFiesta: widget
                                                      .fiestaParametro
                                                      ?.lugarFiesta,
                                                  direccionFiesta: widget
                                                      .fiestaParametro
                                                      ?.direccionFiesta,
                                                  fechaFiesta: widget
                                                      .fiestaParametro
                                                      ?.fechaFiesta,
                                                  horaFiesta: widget
                                                      .fiestaParametro
                                                      ?.horaFiesta,
                                                  horaCreado:
                                                      getCurrentTimestamp,
                                                  estaComprado: false,
                                                  codigoQR:
                                                      '${getCurrentTimestamp.toString()}${currentUserReference?.id}',
                                                  borrado: false,
                                                  codigoRRPP: valueOrDefault(
                                                      currentUserDocument
                                                          ?.codigoRRPP,
                                                      ''),
                                                ));
                                                _model.ticketCreadoExiste =
                                                    TicketSeleccionadoRecord
                                                        .getDocumentFromData(
                                                            createTicketSeleccionadoRecordData(
                                                              nombre: widget
                                                                  .tiketParametro
                                                                  ?.nombre,
                                                              info: widget
                                                                  .tiketParametro
                                                                  ?.info,
                                                              foto: widget
                                                                  .fiestaParametro
                                                                  ?.fotoFiesta,
                                                              precio: widget
                                                                  .tiketParametro
                                                                  ?.precio,
                                                              creador:
                                                                  currentUserReference,
                                                              cantidad: 1,
                                                              nombreFiesta: widget
                                                                  .fiestaParametro
                                                                  ?.nombreFiesta,
                                                              lugarFiesta: widget
                                                                  .fiestaParametro
                                                                  ?.lugarFiesta,
                                                              direccionFiesta: widget
                                                                  .fiestaParametro
                                                                  ?.direccionFiesta,
                                                              fechaFiesta: widget
                                                                  .fiestaParametro
                                                                  ?.fechaFiesta,
                                                              horaFiesta: widget
                                                                  .fiestaParametro
                                                                  ?.horaFiesta,
                                                              horaCreado:
                                                                  getCurrentTimestamp,
                                                              estaComprado:
                                                                  false,
                                                              codigoQR:
                                                                  '${getCurrentTimestamp.toString()}${currentUserReference?.id}',
                                                              borrado: false,
                                                              codigoRRPP: valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.codigoRRPP,
                                                                  ''),
                                                            ),
                                                            ticketSeleccionadoRecordReference1);

                                                await ticketInfoCarritoRecord!
                                                    .reference
                                                    .update({
                                                  ...mapToFirestore(
                                                    {
                                                      'TicketCount':
                                                          FieldValue.increment(
                                                              1),
                                                      'Cantidad': FieldValue
                                                          .increment(_model
                                                              .ticketCreadoExiste!
                                                              .precio),
                                                      'ListaDeTicketsSelec':
                                                          FieldValue
                                                              .arrayUnion([
                                                        _model
                                                            .ticketCreadoExiste
                                                            ?.reference
                                                      ]),
                                                    },
                                                  ),
                                                });

                                                await rowListaTicketsCompradosRecord!
                                                    .reference
                                                    .update({
                                                  ...createListaTicketsCompradosRecordData(
                                                    creador:
                                                        currentUserReference,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'ListaTicketsComprados':
                                                          FieldValue
                                                              .arrayUnion([
                                                        _model
                                                            .ticketCreadoExiste
                                                            ?.reference
                                                      ]),
                                                    },
                                                  ),
                                                });
                                              } else {
                                                var ticketSeleccionadoRecordReference2 =
                                                    TicketSeleccionadoRecord
                                                        .collection
                                                        .doc();
                                                await ticketSeleccionadoRecordReference2
                                                    .set(
                                                        createTicketSeleccionadoRecordData(
                                                  nombre: widget
                                                      .tiketParametro?.nombre,
                                                  info: widget
                                                      .tiketParametro?.info,
                                                  foto: widget.fiestaParametro
                                                      ?.fotoFiesta,
                                                  precio: widget
                                                      .tiketParametro?.precio,
                                                  creador: currentUserReference,
                                                  cantidad: 1,
                                                  nombreFiesta: widget
                                                      .fiestaParametro
                                                      ?.nombreFiesta,
                                                  lugarFiesta: widget
                                                      .fiestaParametro
                                                      ?.lugarFiesta,
                                                  direccionFiesta: widget
                                                      .fiestaParametro
                                                      ?.direccionFiesta,
                                                  fechaFiesta: widget
                                                      .fiestaParametro
                                                      ?.fechaFiesta,
                                                  horaFiesta: widget
                                                      .fiestaParametro
                                                      ?.horaFiesta,
                                                  horaCreado:
                                                      getCurrentTimestamp,
                                                  estaComprado: false,
                                                  codigoQR:
                                                      '${getCurrentTimestamp.toString()}${currentUserReference?.id}',
                                                  borrado: false,
                                                  codigoRRPP: valueOrDefault(
                                                      currentUserDocument
                                                          ?.codigoRRPP,
                                                      ''),
                                                ));
                                                _model.ticketCreado =
                                                    TicketSeleccionadoRecord
                                                        .getDocumentFromData(
                                                            createTicketSeleccionadoRecordData(
                                                              nombre: widget
                                                                  .tiketParametro
                                                                  ?.nombre,
                                                              info: widget
                                                                  .tiketParametro
                                                                  ?.info,
                                                              foto: widget
                                                                  .fiestaParametro
                                                                  ?.fotoFiesta,
                                                              precio: widget
                                                                  .tiketParametro
                                                                  ?.precio,
                                                              creador:
                                                                  currentUserReference,
                                                              cantidad: 1,
                                                              nombreFiesta: widget
                                                                  .fiestaParametro
                                                                  ?.nombreFiesta,
                                                              lugarFiesta: widget
                                                                  .fiestaParametro
                                                                  ?.lugarFiesta,
                                                              direccionFiesta: widget
                                                                  .fiestaParametro
                                                                  ?.direccionFiesta,
                                                              fechaFiesta: widget
                                                                  .fiestaParametro
                                                                  ?.fechaFiesta,
                                                              horaFiesta: widget
                                                                  .fiestaParametro
                                                                  ?.horaFiesta,
                                                              horaCreado:
                                                                  getCurrentTimestamp,
                                                              estaComprado:
                                                                  false,
                                                              codigoQR:
                                                                  '${getCurrentTimestamp.toString()}${currentUserReference?.id}',
                                                              borrado: false,
                                                              codigoRRPP: valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.codigoRRPP,
                                                                  ''),
                                                            ),
                                                            ticketSeleccionadoRecordReference2);

                                                await CarritoRecord.collection
                                                    .doc()
                                                    .set({
                                                  ...createCarritoRecordData(
                                                    creador:
                                                        currentUserReference,
                                                    ticketCount: 1,
                                                    isActive: true,
                                                    cantidad: widget
                                                        .tiketParametro?.precio,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'ListaDeTicketsSelec': [
                                                        _model.ticketCreado
                                                            ?.reference
                                                      ],
                                                    },
                                                  ),
                                                });

                                                await ListaTicketsCompradosRecord
                                                    .collection
                                                    .doc()
                                                    .set({
                                                  ...createListaTicketsCompradosRecordData(
                                                    creador:
                                                        currentUserReference,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'ListaTicketsComprados': [
                                                        _model.ticketCreado
                                                            ?.reference
                                                      ],
                                                    },
                                                  ),
                                                });
                                              }

                                              context.pop();

                                              setState(() {});
                                            },
                                            text: loggedIn
                                                ? 'Anadir a carrito'
                                                : 'Iniciar Sesion',
                                            options: FFButtonOptions(
                                              width: 180.0,
                                              height: 50.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Colors.white,
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ).animateOnPageLoad(
                                animationsMap['stackOnPageLoadAnimation']!),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
