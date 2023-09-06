import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "point" field.
  int? _point;
  int get point => _point ?? 0;
  bool hasPoint() => _point != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "timeStamp" field.
  String? _timeStamp;
  String get timeStamp => _timeStamp ?? '';
  bool hasTimeStamp() => _timeStamp != null;

  void _initializeFields() {
    _location = snapshotData['location'] as String?;
    _name = snapshotData['name'] as String?;
    _password = snapshotData['password'] as String?;
    _phone = snapshotData['phone'] as String?;
    _point = castToType<int>(snapshotData['point']);
    _role = snapshotData['role'] as String?;
    _status = snapshotData['status'] as bool?;
    _timeStamp = snapshotData['timeStamp'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? location,
  String? name,
  String? password,
  String? phone,
  int? point,
  String? role,
  bool? status,
  String? timeStamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'location': location,
      'name': name,
      'password': password,
      'phone': phone,
      'point': point,
      'role': role,
      'status': status,
      'timeStamp': timeStamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    return e1?.location == e2?.location &&
        e1?.name == e2?.name &&
        e1?.password == e2?.password &&
        e1?.phone == e2?.phone &&
        e1?.point == e2?.point &&
        e1?.role == e2?.role &&
        e1?.status == e2?.status &&
        e1?.timeStamp == e2?.timeStamp;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.location,
        e?.name,
        e?.password,
        e?.phone,
        e?.point,
        e?.role,
        e?.status,
        e?.timeStamp
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
