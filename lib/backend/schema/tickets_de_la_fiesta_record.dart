import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TicketsDeLaFiestaRecord extends FirestoreRecord {
  TicketsDeLaFiestaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Info" field.
  String? _info;
  String get info => _info ?? '';
  bool hasInfo() => _info != null;

  // "Precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "Disponible" field.
  bool? _disponible;
  bool get disponible => _disponible ?? false;
  bool hasDisponible() => _disponible != null;

  // "Cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "Foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "fiestita" field.
  DocumentReference? _fiestita;
  DocumentReference? get fiestita => _fiestita;
  bool hasFiestita() => _fiestita != null;

  // "NombreFiesta" field.
  String? _nombreFiesta;
  String get nombreFiesta => _nombreFiesta ?? '';
  bool hasNombreFiesta() => _nombreFiesta != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _info = snapshotData['Info'] as String?;
    _precio = castToType<double>(snapshotData['Precio']);
    _disponible = snapshotData['Disponible'] as bool?;
    _cantidad = castToType<int>(snapshotData['Cantidad']);
    _foto = snapshotData['Foto'] as String?;
    _fiestita = snapshotData['fiestita'] as DocumentReference?;
    _nombreFiesta = snapshotData['NombreFiesta'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('TicketsDeLaFiesta')
          : FirebaseFirestore.instance.collectionGroup('TicketsDeLaFiesta');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('TicketsDeLaFiesta').doc();

  static Stream<TicketsDeLaFiestaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TicketsDeLaFiestaRecord.fromSnapshot(s));

  static Future<TicketsDeLaFiestaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TicketsDeLaFiestaRecord.fromSnapshot(s));

  static TicketsDeLaFiestaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TicketsDeLaFiestaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TicketsDeLaFiestaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TicketsDeLaFiestaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TicketsDeLaFiestaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TicketsDeLaFiestaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTicketsDeLaFiestaRecordData({
  String? nombre,
  String? info,
  double? precio,
  bool? disponible,
  int? cantidad,
  String? foto,
  DocumentReference? fiestita,
  String? nombreFiesta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'Info': info,
      'Precio': precio,
      'Disponible': disponible,
      'Cantidad': cantidad,
      'Foto': foto,
      'fiestita': fiestita,
      'NombreFiesta': nombreFiesta,
    }.withoutNulls,
  );

  return firestoreData;
}

class TicketsDeLaFiestaRecordDocumentEquality
    implements Equality<TicketsDeLaFiestaRecord> {
  const TicketsDeLaFiestaRecordDocumentEquality();

  @override
  bool equals(TicketsDeLaFiestaRecord? e1, TicketsDeLaFiestaRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.info == e2?.info &&
        e1?.precio == e2?.precio &&
        e1?.disponible == e2?.disponible &&
        e1?.cantidad == e2?.cantidad &&
        e1?.foto == e2?.foto &&
        e1?.fiestita == e2?.fiestita &&
        e1?.nombreFiesta == e2?.nombreFiesta;
  }

  @override
  int hash(TicketsDeLaFiestaRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.info,
        e?.precio,
        e?.disponible,
        e?.cantidad,
        e?.foto,
        e?.fiestita,
        e?.nombreFiesta
      ]);

  @override
  bool isValidKey(Object? o) => o is TicketsDeLaFiestaRecord;
}
