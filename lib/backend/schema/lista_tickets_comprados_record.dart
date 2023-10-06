import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListaTicketsCompradosRecord extends FirestoreRecord {
  ListaTicketsCompradosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Creador" field.
  DocumentReference? _creador;
  DocumentReference? get creador => _creador;
  bool hasCreador() => _creador != null;

  // "ListaTicketsComprados" field.
  List<DocumentReference>? _listaTicketsComprados;
  List<DocumentReference> get listaTicketsComprados =>
      _listaTicketsComprados ?? const [];
  bool hasListaTicketsComprados() => _listaTicketsComprados != null;

  // "Borrar" field.
  List<DocumentReference>? _borrar;
  List<DocumentReference> get borrar => _borrar ?? const [];
  bool hasBorrar() => _borrar != null;

  void _initializeFields() {
    _creador = snapshotData['Creador'] as DocumentReference?;
    _listaTicketsComprados = getDataList(snapshotData['ListaTicketsComprados']);
    _borrar = getDataList(snapshotData['Borrar']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ListaTicketsComprados');

  static Stream<ListaTicketsCompradosRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => ListaTicketsCompradosRecord.fromSnapshot(s));

  static Future<ListaTicketsCompradosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ListaTicketsCompradosRecord.fromSnapshot(s));

  static ListaTicketsCompradosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ListaTicketsCompradosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListaTicketsCompradosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListaTicketsCompradosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListaTicketsCompradosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListaTicketsCompradosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListaTicketsCompradosRecordData({
  DocumentReference? creador,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Creador': creador,
    }.withoutNulls,
  );

  return firestoreData;
}

class ListaTicketsCompradosRecordDocumentEquality
    implements Equality<ListaTicketsCompradosRecord> {
  const ListaTicketsCompradosRecordDocumentEquality();

  @override
  bool equals(
      ListaTicketsCompradosRecord? e1, ListaTicketsCompradosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.creador == e2?.creador &&
        listEquality.equals(
            e1?.listaTicketsComprados, e2?.listaTicketsComprados) &&
        listEquality.equals(e1?.borrar, e2?.borrar);
  }

  @override
  int hash(ListaTicketsCompradosRecord? e) => const ListEquality()
      .hash([e?.creador, e?.listaTicketsComprados, e?.borrar]);

  @override
  bool isValidKey(Object? o) => o is ListaTicketsCompradosRecord;
}
