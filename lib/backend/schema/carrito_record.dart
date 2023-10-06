import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarritoRecord extends FirestoreRecord {
  CarritoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "creador" field.
  DocumentReference? _creador;
  DocumentReference? get creador => _creador;
  bool hasCreador() => _creador != null;

  // "TicketCount" field.
  int? _ticketCount;
  int get ticketCount => _ticketCount ?? 0;
  bool hasTicketCount() => _ticketCount != null;

  // "IsActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "Cantidad" field.
  double? _cantidad;
  double get cantidad => _cantidad ?? 0.0;
  bool hasCantidad() => _cantidad != null;

  // "ListaDeTicketsSelec" field.
  List<DocumentReference>? _listaDeTicketsSelec;
  List<DocumentReference> get listaDeTicketsSelec =>
      _listaDeTicketsSelec ?? const [];
  bool hasListaDeTicketsSelec() => _listaDeTicketsSelec != null;

  void _initializeFields() {
    _creador = snapshotData['creador'] as DocumentReference?;
    _ticketCount = castToType<int>(snapshotData['TicketCount']);
    _isActive = snapshotData['IsActive'] as bool?;
    _cantidad = castToType<double>(snapshotData['Cantidad']);
    _listaDeTicketsSelec = getDataList(snapshotData['ListaDeTicketsSelec']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Carrito');

  static Stream<CarritoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarritoRecord.fromSnapshot(s));

  static Future<CarritoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarritoRecord.fromSnapshot(s));

  static CarritoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarritoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarritoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarritoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarritoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarritoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarritoRecordData({
  DocumentReference? creador,
  int? ticketCount,
  bool? isActive,
  double? cantidad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'creador': creador,
      'TicketCount': ticketCount,
      'IsActive': isActive,
      'Cantidad': cantidad,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarritoRecordDocumentEquality implements Equality<CarritoRecord> {
  const CarritoRecordDocumentEquality();

  @override
  bool equals(CarritoRecord? e1, CarritoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.creador == e2?.creador &&
        e1?.ticketCount == e2?.ticketCount &&
        e1?.isActive == e2?.isActive &&
        e1?.cantidad == e2?.cantidad &&
        listEquality.equals(e1?.listaDeTicketsSelec, e2?.listaDeTicketsSelec);
  }

  @override
  int hash(CarritoRecord? e) => const ListEquality().hash([
        e?.creador,
        e?.ticketCount,
        e?.isActive,
        e?.cantidad,
        e?.listaDeTicketsSelec
      ]);

  @override
  bool isValidKey(Object? o) => o is CarritoRecord;
}
