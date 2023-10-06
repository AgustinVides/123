import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TicketSeleccionadoRecord extends FirestoreRecord {
  TicketSeleccionadoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "info" field.
  String? _info;
  String get info => _info ?? '';
  bool hasInfo() => _info != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  // "creador" field.
  DocumentReference? _creador;
  DocumentReference? get creador => _creador;
  bool hasCreador() => _creador != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "Ticket" field.
  DocumentReference? _ticket;
  DocumentReference? get ticket => _ticket;
  bool hasTicket() => _ticket != null;

  // "NombreFiesta" field.
  String? _nombreFiesta;
  String get nombreFiesta => _nombreFiesta ?? '';
  bool hasNombreFiesta() => _nombreFiesta != null;

  // "LugarFiesta" field.
  String? _lugarFiesta;
  String get lugarFiesta => _lugarFiesta ?? '';
  bool hasLugarFiesta() => _lugarFiesta != null;

  // "DireccionFiesta" field.
  String? _direccionFiesta;
  String get direccionFiesta => _direccionFiesta ?? '';
  bool hasDireccionFiesta() => _direccionFiesta != null;

  // "FechaFiesta" field.
  String? _fechaFiesta;
  String get fechaFiesta => _fechaFiesta ?? '';
  bool hasFechaFiesta() => _fechaFiesta != null;

  // "HoraFiesta" field.
  String? _horaFiesta;
  String get horaFiesta => _horaFiesta ?? '';
  bool hasHoraFiesta() => _horaFiesta != null;

  // "HoraCreado" field.
  DateTime? _horaCreado;
  DateTime? get horaCreado => _horaCreado;
  bool hasHoraCreado() => _horaCreado != null;

  // "EstaComprado" field.
  bool? _estaComprado;
  bool get estaComprado => _estaComprado ?? false;
  bool hasEstaComprado() => _estaComprado != null;

  // "CodigoQR" field.
  String? _codigoQR;
  String get codigoQR => _codigoQR ?? '';
  bool hasCodigoQR() => _codigoQR != null;

  // "Borrado" field.
  bool? _borrado;
  bool get borrado => _borrado ?? false;
  bool hasBorrado() => _borrado != null;

  // "CodigoRRPP" field.
  String? _codigoRRPP;
  String get codigoRRPP => _codigoRRPP ?? '';
  bool hasCodigoRRPP() => _codigoRRPP != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _info = snapshotData['info'] as String?;
    _foto = snapshotData['foto'] as String?;
    _precio = castToType<double>(snapshotData['precio']);
    _subtotal = castToType<double>(snapshotData['subtotal']);
    _creador = snapshotData['creador'] as DocumentReference?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _ticket = snapshotData['Ticket'] as DocumentReference?;
    _nombreFiesta = snapshotData['NombreFiesta'] as String?;
    _lugarFiesta = snapshotData['LugarFiesta'] as String?;
    _direccionFiesta = snapshotData['DireccionFiesta'] as String?;
    _fechaFiesta = snapshotData['FechaFiesta'] as String?;
    _horaFiesta = snapshotData['HoraFiesta'] as String?;
    _horaCreado = snapshotData['HoraCreado'] as DateTime?;
    _estaComprado = snapshotData['EstaComprado'] as bool?;
    _codigoQR = snapshotData['CodigoQR'] as String?;
    _borrado = snapshotData['Borrado'] as bool?;
    _codigoRRPP = snapshotData['CodigoRRPP'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TicketSeleccionado');

  static Stream<TicketSeleccionadoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TicketSeleccionadoRecord.fromSnapshot(s));

  static Future<TicketSeleccionadoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TicketSeleccionadoRecord.fromSnapshot(s));

  static TicketSeleccionadoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TicketSeleccionadoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TicketSeleccionadoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TicketSeleccionadoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TicketSeleccionadoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TicketSeleccionadoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTicketSeleccionadoRecordData({
  String? nombre,
  String? info,
  String? foto,
  double? precio,
  double? subtotal,
  DocumentReference? creador,
  int? cantidad,
  DocumentReference? ticket,
  String? nombreFiesta,
  String? lugarFiesta,
  String? direccionFiesta,
  String? fechaFiesta,
  String? horaFiesta,
  DateTime? horaCreado,
  bool? estaComprado,
  String? codigoQR,
  bool? borrado,
  String? codigoRRPP,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'info': info,
      'foto': foto,
      'precio': precio,
      'subtotal': subtotal,
      'creador': creador,
      'cantidad': cantidad,
      'Ticket': ticket,
      'NombreFiesta': nombreFiesta,
      'LugarFiesta': lugarFiesta,
      'DireccionFiesta': direccionFiesta,
      'FechaFiesta': fechaFiesta,
      'HoraFiesta': horaFiesta,
      'HoraCreado': horaCreado,
      'EstaComprado': estaComprado,
      'CodigoQR': codigoQR,
      'Borrado': borrado,
      'CodigoRRPP': codigoRRPP,
    }.withoutNulls,
  );

  return firestoreData;
}

class TicketSeleccionadoRecordDocumentEquality
    implements Equality<TicketSeleccionadoRecord> {
  const TicketSeleccionadoRecordDocumentEquality();

  @override
  bool equals(TicketSeleccionadoRecord? e1, TicketSeleccionadoRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.info == e2?.info &&
        e1?.foto == e2?.foto &&
        e1?.precio == e2?.precio &&
        e1?.subtotal == e2?.subtotal &&
        e1?.creador == e2?.creador &&
        e1?.cantidad == e2?.cantidad &&
        e1?.ticket == e2?.ticket &&
        e1?.nombreFiesta == e2?.nombreFiesta &&
        e1?.lugarFiesta == e2?.lugarFiesta &&
        e1?.direccionFiesta == e2?.direccionFiesta &&
        e1?.fechaFiesta == e2?.fechaFiesta &&
        e1?.horaFiesta == e2?.horaFiesta &&
        e1?.horaCreado == e2?.horaCreado &&
        e1?.estaComprado == e2?.estaComprado &&
        e1?.codigoQR == e2?.codigoQR &&
        e1?.borrado == e2?.borrado &&
        e1?.codigoRRPP == e2?.codigoRRPP;
  }

  @override
  int hash(TicketSeleccionadoRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.info,
        e?.foto,
        e?.precio,
        e?.subtotal,
        e?.creador,
        e?.cantidad,
        e?.ticket,
        e?.nombreFiesta,
        e?.lugarFiesta,
        e?.direccionFiesta,
        e?.fechaFiesta,
        e?.horaFiesta,
        e?.horaCreado,
        e?.estaComprado,
        e?.codigoQR,
        e?.borrado,
        e?.codigoRRPP
      ]);

  @override
  bool isValidKey(Object? o) => o is TicketSeleccionadoRecord;
}
