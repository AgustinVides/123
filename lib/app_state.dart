import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _qr1 = prefs.getString('ff_qr1') ?? _qr1;
    });
    _safeInit(() {
      _CantidadCarrito = prefs.getInt('ff_CantidadCarrito') ?? _CantidadCarrito;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _qr = '';
  String get qr => _qr;
  set qr(String _value) {
    _qr = _value;
  }

  String _qr1 = '';
  String get qr1 => _qr1;
  set qr1(String _value) {
    _qr1 = _value;
    prefs.setString('ff_qr1', _value);
  }

  int _CantidadCarrito = 0;
  int get CantidadCarrito => _CantidadCarrito;
  set CantidadCarrito(int _value) {
    _CantidadCarrito = _value;
    prefs.setInt('ff_CantidadCarrito', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
