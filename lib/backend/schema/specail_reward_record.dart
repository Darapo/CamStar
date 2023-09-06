import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SpecailRewardRecord extends FirestoreRecord {
  SpecailRewardRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "item" field.
  String? _item;
  String get item => _item ?? '';
  bool hasItem() => _item != null;

  // "point" field.
  int? _point;
  int get point => _point ?? 0;
  bool hasPoint() => _point != null;

  // "product" field.
  String? _product;
  String get product => _product ?? '';
  bool hasProduct() => _product != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _item = snapshotData['item'] as String?;
    _point = castToType<int>(snapshotData['point']);
    _product = snapshotData['product'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('specailReward');

  static Stream<SpecailRewardRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SpecailRewardRecord.fromSnapshot(s));

  static Future<SpecailRewardRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SpecailRewardRecord.fromSnapshot(s));

  static SpecailRewardRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SpecailRewardRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SpecailRewardRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SpecailRewardRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SpecailRewardRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SpecailRewardRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSpecailRewardRecordData({
  String? item,
  int? point,
  String? product,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'item': item,
      'point': point,
      'product': product,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class SpecailRewardRecordDocumentEquality
    implements Equality<SpecailRewardRecord> {
  const SpecailRewardRecordDocumentEquality();

  @override
  bool equals(SpecailRewardRecord? e1, SpecailRewardRecord? e2) {
    return e1?.item == e2?.item &&
        e1?.point == e2?.point &&
        e1?.product == e2?.product &&
        e1?.image == e2?.image;
  }

  @override
  int hash(SpecailRewardRecord? e) =>
      const ListEquality().hash([e?.item, e?.point, e?.product, e?.image]);

  @override
  bool isValidKey(Object? o) => o is SpecailRewardRecord;
}
