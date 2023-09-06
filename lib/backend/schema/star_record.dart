import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StarRecord extends FirestoreRecord {
  StarRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "star" field.
  int? _star;
  int get star => _star ?? 0;
  bool hasStar() => _star != null;

  void _initializeFields() {
    _star = castToType<int>(snapshotData['star']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('star');

  static Stream<StarRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StarRecord.fromSnapshot(s));

  static Future<StarRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StarRecord.fromSnapshot(s));

  static StarRecord fromSnapshot(DocumentSnapshot snapshot) => StarRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StarRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StarRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StarRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StarRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStarRecordData({
  int? star,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'star': star,
    }.withoutNulls,
  );

  return firestoreData;
}

class StarRecordDocumentEquality implements Equality<StarRecord> {
  const StarRecordDocumentEquality();

  @override
  bool equals(StarRecord? e1, StarRecord? e2) {
    return e1?.star == e2?.star;
  }

  @override
  int hash(StarRecord? e) => const ListEquality().hash([e?.star]);

  @override
  bool isValidKey(Object? o) => o is StarRecord;
}
