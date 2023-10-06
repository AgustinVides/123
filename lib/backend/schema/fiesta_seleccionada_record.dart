import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FiestaSeleccionadaRecord extends FirestoreRecord {
  FiestaSeleccionadaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fiesta" field.
  DocumentReference? _fiesta;
  DocumentReference? get fiesta => _fiesta;
  bool hasFiesta() => _fiesta != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "info" field.
  String? _info;
  String get info => _info ?? '';
  bool hasInfo() => _info != null;

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  bool hasFecha() => _fecha != null;

  // "lugar" field.
  String? _lugar;
  String get lugar => _lugar ?? '';
  bool hasLugar() => _lugar != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  void _initializeFields() {
    _fiesta = snapshotData['fiesta'] as DocumentReference?;
    _nombre = snapshotData['nombre'] as String?;
    _info = snapshotData['info'] as String?;
    _fecha = snapshotData['fecha'] as String?;
    _lugar = snapshotData['lugar'] as String?;
    _direccion = snapshotData['direccion'] as String?;
    _imagen = snapshotData['imagen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FiestaSeleccionada');

  static Stream<FiestaSeleccionadaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FiestaSeleccionadaRecord.fromSnapshot(s));

  static Future<FiestaSeleccionadaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => FiestaSeleccionadaRecord.fromSnapshot(s));

  static FiestaSeleccionadaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FiestaSeleccionadaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FiestaSeleccionadaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FiestaSeleccionadaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FiestaSeleccionadaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FiestaSeleccionadaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFiestaSeleccionadaRecordData({
  DocumentReference? fiesta,
  String? nombre,
  String? info,
  String? fecha,
  String? lugar,
  String? direccion,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fiesta': fiesta,
      'nombre': nombre,
      'info': info,
      'fecha': fecha,
      'lugar': lugar,
      'direccion': direccion,
      'imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class FiestaSeleccionadaRecordDocumentEquality
    implements Equality<FiestaSeleccionadaRecord> {
  const FiestaSeleccionadaRecordDocumentEquality();

  @override
  bool equals(FiestaSeleccionadaRecord? e1, FiestaSeleccionadaRecord? e2) {
    return e1?.fiesta == e2?.fiesta &&
        e1?.nombre == e2?.nombre &&
        e1?.info == e2?.info &&
        e1?.fecha == e2?.fecha &&
        e1?.lugar == e2?.lugar &&
        e1?.direccion == e2?.direccion &&
        e1?.imagen == e2?.imagen;
  }

  @override
  int hash(FiestaSeleccionadaRecord? e) => const ListEquality().hash([
        e?.fiesta,
        e?.nombre,
        e?.info,
        e?.fecha,
        e?.lugar,
        e?.direccion,
        e?.imagen
      ]);

  @override
  bool isValidKey(Object? o) => o is FiestaSeleccionadaRecord;
}
