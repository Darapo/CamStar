import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductCategoryRecord extends FirestoreRecord {
  ProductCategoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _logo = snapshotData['logo'] as String?;
    _name = snapshotData['name'] as String?;
    _order = castToType<int>(snapshotData['order']);
    _status = snapshotData['status'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('productCategory');

  static Stream<ProductCategoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductCategoryRecord.fromSnapshot(s));

  static Future<ProductCategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductCategoryRecord.fromSnapshot(s));

  static ProductCategoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductCategoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductCategoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductCategoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductCategoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductCategoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductCategoryRecordData({
  int? id,
  String? logo,
  String? name,
  int? order,
  bool? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'logo': logo,
      'name': name,
      'order': order,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductCategoryRecordDocumentEquality
    implements Equality<ProductCategoryRecord> {
  const ProductCategoryRecordDocumentEquality();

  @override
  bool equals(ProductCategoryRecord? e1, ProductCategoryRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.logo == e2?.logo &&
        e1?.name == e2?.name &&
        e1?.order == e2?.order &&
        e1?.status == e2?.status;
  }

  @override
  int hash(ProductCategoryRecord? e) =>
      const ListEquality().hash([e?.id, e?.logo, e?.name, e?.order, e?.status]);

  @override
  bool isValidKey(Object? o) => o is ProductCategoryRecord;
}
