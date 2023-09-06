import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromotionRecord extends FirestoreRecord {
  PromotionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "date_event" field.
  TimestampStruct? _dateEvent;
  TimestampStruct get dateEvent => _dateEvent ?? TimestampStruct();
  bool hasDateEvent() => _dateEvent != null;

  // "date_create" field.
  TimestampStruct? _dateCreate;
  TimestampStruct get dateCreate => _dateCreate ?? TimestampStruct();
  bool hasDateCreate() => _dateCreate != null;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _title = snapshotData['title'] as String?;
    _dateEvent = TimestampStruct.maybeFromMap(snapshotData['date_event']);
    _dateCreate = TimestampStruct.maybeFromMap(snapshotData['date_create']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('promotion');

  static Stream<PromotionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PromotionRecord.fromSnapshot(s));

  static Future<PromotionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PromotionRecord.fromSnapshot(s));

  static PromotionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PromotionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PromotionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PromotionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PromotionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PromotionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPromotionRecordData({
  String? description,
  String? title,
  TimestampStruct? dateEvent,
  TimestampStruct? dateCreate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'title': title,
      'date_event': TimestampStruct().toMap(),
      'date_create': TimestampStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "date_event" field.
  addTimestampStructData(firestoreData, dateEvent, 'date_event');

  // Handle nested data for "date_create" field.
  addTimestampStructData(firestoreData, dateCreate, 'date_create');

  return firestoreData;
}

class PromotionRecordDocumentEquality implements Equality<PromotionRecord> {
  const PromotionRecordDocumentEquality();

  @override
  bool equals(PromotionRecord? e1, PromotionRecord? e2) {
    return e1?.description == e2?.description &&
        e1?.title == e2?.title &&
        e1?.dateEvent == e2?.dateEvent &&
        e1?.dateCreate == e2?.dateCreate;
  }

  @override
  int hash(PromotionRecord? e) => const ListEquality()
      .hash([e?.description, e?.title, e?.dateEvent, e?.dateCreate]);

  @override
  bool isValidKey(Object? o) => o is PromotionRecord;
}
