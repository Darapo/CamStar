import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsGalleryRecord extends FirestoreRecord {
  EventsGalleryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "gallery" field.
  List<String>? _gallery;
  List<String> get gallery => _gallery ?? const [];
  bool hasGallery() => _gallery != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _gallery = getDataList(snapshotData['gallery']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('eventsGallery');

  static Stream<EventsGalleryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsGalleryRecord.fromSnapshot(s));

  static Future<EventsGalleryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsGalleryRecord.fromSnapshot(s));

  static EventsGalleryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EventsGalleryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsGalleryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsGalleryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsGalleryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsGalleryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsGalleryRecordData({
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsGalleryRecordDocumentEquality
    implements Equality<EventsGalleryRecord> {
  const EventsGalleryRecordDocumentEquality();

  @override
  bool equals(EventsGalleryRecord? e1, EventsGalleryRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        listEquality.equals(e1?.gallery, e2?.gallery);
  }

  @override
  int hash(EventsGalleryRecord? e) =>
      const ListEquality().hash([e?.title, e?.gallery]);

  @override
  bool isValidKey(Object? o) => o is EventsGalleryRecord;
}
