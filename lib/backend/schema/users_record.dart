import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "isdev" field.
  bool? _isdev;
  bool get isdev => _isdev ?? false;
  bool hasIsdev() => _isdev != null;

  // "codigorandom" field.
  String? _codigorandom;
  String get codigorandom => _codigorandom ?? '';
  bool hasCodigorandom() => _codigorandom != null;

  // "Fechadecreacion" field.
  DateTime? _fechadecreacion;
  DateTime? get fechadecreacion => _fechadecreacion;
  bool hasFechadecreacion() => _fechadecreacion != null;

  // "Ticketero" field.
  bool? _ticketero;
  bool get ticketero => _ticketero ?? false;
  bool hasTicketero() => _ticketero != null;

  // "CodigoRRPP" field.
  String? _codigoRRPP;
  String get codigoRRPP => _codigoRRPP ?? '';
  bool hasCodigoRRPP() => _codigoRRPP != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _password = snapshotData['password'] as String?;
    _isdev = snapshotData['isdev'] as bool?;
    _codigorandom = snapshotData['codigorandom'] as String?;
    _fechadecreacion = snapshotData['Fechadecreacion'] as DateTime?;
    _ticketero = snapshotData['Ticketero'] as bool?;
    _codigoRRPP = snapshotData['CodigoRRPP'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? password,
  bool? isdev,
  String? codigorandom,
  DateTime? fechadecreacion,
  bool? ticketero,
  String? codigoRRPP,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'password': password,
      'isdev': isdev,
      'codigorandom': codigorandom,
      'Fechadecreacion': fechadecreacion,
      'Ticketero': ticketero,
      'CodigoRRPP': codigoRRPP,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.password == e2?.password &&
        e1?.isdev == e2?.isdev &&
        e1?.codigorandom == e2?.codigorandom &&
        e1?.fechadecreacion == e2?.fechadecreacion &&
        e1?.ticketero == e2?.ticketero &&
        e1?.codigoRRPP == e2?.codigoRRPP;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.password,
        e?.isdev,
        e?.codigorandom,
        e?.fechadecreacion,
        e?.ticketero,
        e?.codigoRRPP
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
