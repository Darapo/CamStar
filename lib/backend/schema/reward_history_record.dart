import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RewardHistoryRecord extends FirestoreRecord {
  RewardHistoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "point" field.
  int? _point;
  int get point => _point ?? 0;
  bool hasPoint() => _point != null;

  // "reward" field.
  String? _reward;
  String get reward => _reward ?? '';
  bool hasReward() => _reward != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "timeStamp" field.
  String? _timeStamp;
  String get timeStamp => _timeStamp ?? '';
  bool hasTimeStamp() => _timeStamp != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _location = snapshotData['location'] as String?;
    _phone = snapshotData['phone'] as String?;
    _point = castToType<int>(snapshotData['point']);
    _reward = snapshotData['reward'] as String?;
    _status = snapshotData['status'] as String?;
    _timeStamp = snapshotData['timeStamp'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rewardHistory');

  static Stream<RewardHistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RewardHistoryRecord.fromSnapshot(s));

  static Future<RewardHistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RewardHistoryRecord.fromSnapshot(s));

  static RewardHistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RewardHistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RewardHistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RewardHistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RewardHistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RewardHistoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRewardHistoryRecordData({
  String? id,
  String? location,
  String? phone,
  int? point,
  String? reward,
  String? status,
  String? timeStamp,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'location': location,
      'phone': phone,
      'point': point,
      'reward': reward,
      'status': status,
      'timeStamp': timeStamp,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class RewardHistoryRecordDocumentEquality
    implements Equality<RewardHistoryRecord> {
  const RewardHistoryRecordDocumentEquality();

  @override
  bool equals(RewardHistoryRecord? e1, RewardHistoryRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.location == e2?.location &&
        e1?.phone == e2?.phone &&
        e1?.point == e2?.point &&
        e1?.reward == e2?.reward &&
        e1?.status == e2?.status &&
        e1?.timeStamp == e2?.timeStamp &&
        e1?.name == e2?.name;
  }

  @override
  int hash(RewardHistoryRecord? e) => const ListEquality().hash([
        e?.id,
        e?.location,
        e?.phone,
        e?.point,
        e?.reward,
        e?.status,
        e?.timeStamp,
        e?.name
      ]);

  @override
  bool isValidKey(Object? o) => o is RewardHistoryRecord;
}
