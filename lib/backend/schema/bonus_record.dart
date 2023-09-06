import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BonusRecord extends FirestoreRecord {
  BonusRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tile" field.
  String? _tile;
  String get tile => _tile ?? '';
  bool hasTile() => _tile != null;

  // "cards" field.
  List<String>? _cards;
  List<String> get cards => _cards ?? const [];
  bool hasCards() => _cards != null;

  void _initializeFields() {
    _tile = snapshotData['tile'] as String?;
    _cards = getDataList(snapshotData['cards']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bonus');

  static Stream<BonusRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BonusRecord.fromSnapshot(s));

  static Future<BonusRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BonusRecord.fromSnapshot(s));

  static BonusRecord fromSnapshot(DocumentSnapshot snapshot) => BonusRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BonusRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BonusRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BonusRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BonusRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBonusRecordData({
  String? tile,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tile': tile,
    }.withoutNulls,
  );

  return firestoreData;
}

class BonusRecordDocumentEquality implements Equality<BonusRecord> {
  const BonusRecordDocumentEquality();

  @override
  bool equals(BonusRecord? e1, BonusRecord? e2) {
    const listEquality = ListEquality();
    return e1?.tile == e2?.tile && listEquality.equals(e1?.cards, e2?.cards);
  }

  @override
  int hash(BonusRecord? e) => const ListEquality().hash([e?.tile, e?.cards]);

  @override
  bool isValidKey(Object? o) => o is BonusRecord;
}
