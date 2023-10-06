import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FiestasRecord extends FirestoreRecord {
  FiestasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreFiesta" field.
  String? _nombreFiesta;
  String get nombreFiesta => _nombreFiesta ?? '';
  bool hasNombreFiesta() => _nombreFiesta != null;

  // "lugarFiesta" field.
  String? _lugarFiesta;
  String get lugarFiesta => _lugarFiesta ?? '';
  bool hasLugarFiesta() => _lugarFiesta != null;

  // "direccionFiesta" field.
  String? _direccionFiesta;
  String get direccionFiesta => _direccionFiesta ?? '';
  bool hasDireccionFiesta() => _direccionFiesta != null;

  // "horaFiesta" field.
  String? _horaFiesta;
  String get horaFiesta => _horaFiesta ?? '';
  bool hasHoraFiesta() => _horaFiesta != null;

  // "fotoFiesta" field.
  String? _fotoFiesta;
  String get fotoFiesta => _fotoFiesta ?? '';
  bool hasFotoFiesta() => _fotoFiesta != null;

  // "fechaFiesta" field.
  String? _fechaFiesta;
  String get fechaFiesta => _fechaFiesta ?? '';
  bool hasFechaFiesta() => _fechaFiesta != null;

  // "infoFiesta" field.
  String? _infoFiesta;
  String get infoFiesta => _infoFiesta ?? '';
  bool hasInfoFiesta() => _infoFiesta != null;

  // "puntosFiesta" field.
  double? _puntosFiesta;
  double get puntosFiesta => _puntosFiesta ?? 0.0;
  bool hasPuntosFiesta() => _puntosFiesta != null;

  // "cordenadasFiestas" field.
  LatLng? _cordenadasFiestas;
  LatLng? get cordenadasFiestas => _cordenadasFiestas;
  bool hasCordenadasFiestas() => _cordenadasFiestas != null;

  // "LugarGeneralCiudad" field.
  String? _lugarGeneralCiudad;
  String get lugarGeneralCiudad => _lugarGeneralCiudad ?? '';
  bool hasLugarGeneralCiudad() => _lugarGeneralCiudad != null;

  void _initializeFields() {
    _nombreFiesta = snapshotData['nombreFiesta'] as String?;
    _lugarFiesta = snapshotData['lugarFiesta'] as String?;
    _direccionFiesta = snapshotData['direccionFiesta'] as String?;
    _horaFiesta = snapshotData['horaFiesta'] as String?;
    _fotoFiesta = snapshotData['fotoFiesta'] as String?;
    _fechaFiesta = snapshotData['fechaFiesta'] as String?;
    _infoFiesta = snapshotData['infoFiesta'] as String?;
    _puntosFiesta = castToType<double>(snapshotData['puntosFiesta']);
    _cordenadasFiestas = snapshotData['cordenadasFiestas'] as LatLng?;
    _lugarGeneralCiudad = snapshotData['LugarGeneralCiudad'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Fiestas');

  static Stream<FiestasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FiestasRecord.fromSnapshot(s));

  static Future<FiestasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FiestasRecord.fromSnapshot(s));

  static FiestasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FiestasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FiestasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FiestasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FiestasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FiestasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFiestasRecordData({
  String? nombreFiesta,
  String? lugarFiesta,
  String? direccionFiesta,
  String? horaFiesta,
  String? fotoFiesta,
  String? fechaFiesta,
  String? infoFiesta,
  double? puntosFiesta,
  LatLng? cordenadasFiestas,
  String? lugarGeneralCiudad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreFiesta': nombreFiesta,
      'lugarFiesta': lugarFiesta,
      'direccionFiesta': direccionFiesta,
      'horaFiesta': horaFiesta,
      'fotoFiesta': fotoFiesta,
      'fechaFiesta': fechaFiesta,
      'infoFiesta': infoFiesta,
      'puntosFiesta': puntosFiesta,
      'cordenadasFiestas': cordenadasFiestas,
      'LugarGeneralCiudad': lugarGeneralCiudad,
    }.withoutNulls,
  );

  return firestoreData;
}

class FiestasRecordDocumentEquality implements Equality<FiestasRecord> {
  const FiestasRecordDocumentEquality();

  @override
  bool equals(FiestasRecord? e1, FiestasRecord? e2) {
    return e1?.nombreFiesta == e2?.nombreFiesta &&
        e1?.lugarFiesta == e2?.lugarFiesta &&
        e1?.direccionFiesta == e2?.direccionFiesta &&
        e1?.horaFiesta == e2?.horaFiesta &&
        e1?.fotoFiesta == e2?.fotoFiesta &&
        e1?.fechaFiesta == e2?.fechaFiesta &&
        e1?.infoFiesta == e2?.infoFiesta &&
        e1?.puntosFiesta == e2?.puntosFiesta &&
        e1?.cordenadasFiestas == e2?.cordenadasFiestas &&
        e1?.lugarGeneralCiudad == e2?.lugarGeneralCiudad;
  }

  @override
  int hash(FiestasRecord? e) => const ListEquality().hash([
        e?.nombreFiesta,
        e?.lugarFiesta,
        e?.direccionFiesta,
        e?.horaFiesta,
        e?.fotoFiesta,
        e?.fechaFiesta,
        e?.infoFiesta,
        e?.puntosFiesta,
        e?.cordenadasFiestas,
        e?.lugarGeneralCiudad
      ]);

  @override
  bool isValidKey(Object? o) => o is FiestasRecord;
}
