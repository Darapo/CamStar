import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QrCodeRecord extends FirestoreRecord {
  QrCodeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  bool hasCode() => _code != null;

  // "point" field.
  int? _point;
  int get point => _point ?? 0;
  bool hasPoint() => _point != null;

  // "scan_date" field.
  String? _scanDate;
  String get scanDate => _scanDate ?? '';
  bool hasScanDate() => _scanDate != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  bool hasUser() => _user != null;

  void _initializeFields() {
    _code = snapshotData['code'] as String?;
    _point = castToType<int>(snapshotData['point']);
    _scanDate = snapshotData['scan_date'] as String?;
    _status = snapshotData['status'] as bool?;
    _user = snapshotData['user'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('qrCode');

  static Stream<QrCodeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QrCodeRecord.fromSnapshot(s));

  static Future<QrCodeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QrCodeRecord.fromSnapshot(s));

  static QrCodeRecord fromSnapshot(DocumentSnapshot snapshot) => QrCodeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QrCodeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QrCodeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QrCodeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QrCodeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQrCodeRecordData({
  String? code,
  int? point,
  String? scanDate,
  bool? status,
  String? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'code': code,
      'point': point,
      'scan_date': scanDate,
      'status': status,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class QrCodeRecordDocumentEquality implements Equality<QrCodeRecord> {
  const QrCodeRecordDocumentEquality();

  @override
  bool equals(QrCodeRecord? e1, QrCodeRecord? e2) {
    return e1?.code == e2?.code &&
        e1?.point == e2?.point &&
        e1?.scanDate == e2?.scanDate &&
        e1?.status == e2?.status &&
        e1?.user == e2?.user;
  }

  @override
  int hash(QrCodeRecord? e) => const ListEquality()
      .hash([e?.code, e?.point, e?.scanDate, e?.status, e?.user]);

  @override
  bool isValidKey(Object? o) => o is QrCodeRecord;
}
