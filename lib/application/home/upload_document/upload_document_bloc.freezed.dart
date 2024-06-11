// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_document_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UploadDocumentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String doctorId,
            String clinicId,
            String patientId,
            String appointmentId,
            String? note,
            String? imagePath)
        upload,
    required TResult Function(String? imageFromGallery) selectImageFromGallery,
    required TResult Function(String? imageFromCamera) selectImageFromCamera,
    required TResult Function(String? pdfFromFiles) selectPdfFiles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String doctorId, String clinicId, String patientId,
            String appointmentId, String? note, String? imagePath)?
        upload,
    TResult? Function(String? imageFromGallery)? selectImageFromGallery,
    TResult? Function(String? imageFromCamera)? selectImageFromCamera,
    TResult? Function(String? pdfFromFiles)? selectPdfFiles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String doctorId, String clinicId, String patientId,
            String appointmentId, String? note, String? imagePath)?
        upload,
    TResult Function(String? imageFromGallery)? selectImageFromGallery,
    TResult Function(String? imageFromCamera)? selectImageFromCamera,
    TResult Function(String? pdfFromFiles)? selectPdfFiles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Upload value) upload,
    required TResult Function(_SelectImageFromGallery value)
        selectImageFromGallery,
    required TResult Function(_SelectImageFromCamera value)
        selectImageFromCamera,
    required TResult Function(_SelectPdfFiles value) selectPdfFiles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Upload value)? upload,
    TResult? Function(_SelectImageFromGallery value)? selectImageFromGallery,
    TResult? Function(_SelectImageFromCamera value)? selectImageFromCamera,
    TResult? Function(_SelectPdfFiles value)? selectPdfFiles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Upload value)? upload,
    TResult Function(_SelectImageFromGallery value)? selectImageFromGallery,
    TResult Function(_SelectImageFromCamera value)? selectImageFromCamera,
    TResult Function(_SelectPdfFiles value)? selectPdfFiles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadDocumentEventCopyWith<$Res> {
  factory $UploadDocumentEventCopyWith(
          UploadDocumentEvent value, $Res Function(UploadDocumentEvent) then) =
      _$UploadDocumentEventCopyWithImpl<$Res, UploadDocumentEvent>;
}

/// @nodoc
class _$UploadDocumentEventCopyWithImpl<$Res, $Val extends UploadDocumentEvent>
    implements $UploadDocumentEventCopyWith<$Res> {
  _$UploadDocumentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UploadImplCopyWith<$Res> {
  factory _$$UploadImplCopyWith(
          _$UploadImpl value, $Res Function(_$UploadImpl) then) =
      __$$UploadImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String doctorId,
      String clinicId,
      String patientId,
      String appointmentId,
      String? note,
      String? imagePath});
}

/// @nodoc
class __$$UploadImplCopyWithImpl<$Res>
    extends _$UploadDocumentEventCopyWithImpl<$Res, _$UploadImpl>
    implements _$$UploadImplCopyWith<$Res> {
  __$$UploadImplCopyWithImpl(
      _$UploadImpl _value, $Res Function(_$UploadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = null,
    Object? clinicId = null,
    Object? patientId = null,
    Object? appointmentId = null,
    Object? note = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_$UploadImpl(
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      clinicId: null == clinicId
          ? _value.clinicId
          : clinicId // ignore: cast_nullable_to_non_nullable
              as String,
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UploadImpl implements _Upload {
  const _$UploadImpl(
      {required this.doctorId,
      required this.clinicId,
      required this.patientId,
      required this.appointmentId,
      this.note,
      this.imagePath});

  @override
  final String doctorId;
  @override
  final String clinicId;
  @override
  final String patientId;
  @override
  final String appointmentId;
  @override
  final String? note;
  @override
  final String? imagePath;

  @override
  String toString() {
    return 'UploadDocumentEvent.upload(doctorId: $doctorId, clinicId: $clinicId, patientId: $patientId, appointmentId: $appointmentId, note: $note, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImpl &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.clinicId, clinicId) ||
                other.clinicId == clinicId) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doctorId, clinicId, patientId,
      appointmentId, note, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImplCopyWith<_$UploadImpl> get copyWith =>
      __$$UploadImplCopyWithImpl<_$UploadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String doctorId,
            String clinicId,
            String patientId,
            String appointmentId,
            String? note,
            String? imagePath)
        upload,
    required TResult Function(String? imageFromGallery) selectImageFromGallery,
    required TResult Function(String? imageFromCamera) selectImageFromCamera,
    required TResult Function(String? pdfFromFiles) selectPdfFiles,
  }) {
    return upload(
        doctorId, clinicId, patientId, appointmentId, note, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String doctorId, String clinicId, String patientId,
            String appointmentId, String? note, String? imagePath)?
        upload,
    TResult? Function(String? imageFromGallery)? selectImageFromGallery,
    TResult? Function(String? imageFromCamera)? selectImageFromCamera,
    TResult? Function(String? pdfFromFiles)? selectPdfFiles,
  }) {
    return upload?.call(
        doctorId, clinicId, patientId, appointmentId, note, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String doctorId, String clinicId, String patientId,
            String appointmentId, String? note, String? imagePath)?
        upload,
    TResult Function(String? imageFromGallery)? selectImageFromGallery,
    TResult Function(String? imageFromCamera)? selectImageFromCamera,
    TResult Function(String? pdfFromFiles)? selectPdfFiles,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload(
          doctorId, clinicId, patientId, appointmentId, note, imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Upload value) upload,
    required TResult Function(_SelectImageFromGallery value)
        selectImageFromGallery,
    required TResult Function(_SelectImageFromCamera value)
        selectImageFromCamera,
    required TResult Function(_SelectPdfFiles value) selectPdfFiles,
  }) {
    return upload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Upload value)? upload,
    TResult? Function(_SelectImageFromGallery value)? selectImageFromGallery,
    TResult? Function(_SelectImageFromCamera value)? selectImageFromCamera,
    TResult? Function(_SelectPdfFiles value)? selectPdfFiles,
  }) {
    return upload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Upload value)? upload,
    TResult Function(_SelectImageFromGallery value)? selectImageFromGallery,
    TResult Function(_SelectImageFromCamera value)? selectImageFromCamera,
    TResult Function(_SelectPdfFiles value)? selectPdfFiles,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload(this);
    }
    return orElse();
  }
}

abstract class _Upload implements UploadDocumentEvent {
  const factory _Upload(
      {required final String doctorId,
      required final String clinicId,
      required final String patientId,
      required final String appointmentId,
      final String? note,
      final String? imagePath}) = _$UploadImpl;

  String get doctorId;
  String get clinicId;
  String get patientId;
  String get appointmentId;
  String? get note;
  String? get imagePath;
  @JsonKey(ignore: true)
  _$$UploadImplCopyWith<_$UploadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectImageFromGalleryImplCopyWith<$Res> {
  factory _$$SelectImageFromGalleryImplCopyWith(
          _$SelectImageFromGalleryImpl value,
          $Res Function(_$SelectImageFromGalleryImpl) then) =
      __$$SelectImageFromGalleryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? imageFromGallery});
}

/// @nodoc
class __$$SelectImageFromGalleryImplCopyWithImpl<$Res>
    extends _$UploadDocumentEventCopyWithImpl<$Res,
        _$SelectImageFromGalleryImpl>
    implements _$$SelectImageFromGalleryImplCopyWith<$Res> {
  __$$SelectImageFromGalleryImplCopyWithImpl(
      _$SelectImageFromGalleryImpl _value,
      $Res Function(_$SelectImageFromGalleryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageFromGallery = freezed,
  }) {
    return _then(_$SelectImageFromGalleryImpl(
      freezed == imageFromGallery
          ? _value.imageFromGallery
          : imageFromGallery // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SelectImageFromGalleryImpl implements _SelectImageFromGallery {
  const _$SelectImageFromGalleryImpl(this.imageFromGallery);

  @override
  final String? imageFromGallery;

  @override
  String toString() {
    return 'UploadDocumentEvent.selectImageFromGallery(imageFromGallery: $imageFromGallery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectImageFromGalleryImpl &&
            (identical(other.imageFromGallery, imageFromGallery) ||
                other.imageFromGallery == imageFromGallery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageFromGallery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectImageFromGalleryImplCopyWith<_$SelectImageFromGalleryImpl>
      get copyWith => __$$SelectImageFromGalleryImplCopyWithImpl<
          _$SelectImageFromGalleryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String doctorId,
            String clinicId,
            String patientId,
            String appointmentId,
            String? note,
            String? imagePath)
        upload,
    required TResult Function(String? imageFromGallery) selectImageFromGallery,
    required TResult Function(String? imageFromCamera) selectImageFromCamera,
    required TResult Function(String? pdfFromFiles) selectPdfFiles,
  }) {
    return selectImageFromGallery(imageFromGallery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String doctorId, String clinicId, String patientId,
            String appointmentId, String? note, String? imagePath)?
        upload,
    TResult? Function(String? imageFromGallery)? selectImageFromGallery,
    TResult? Function(String? imageFromCamera)? selectImageFromCamera,
    TResult? Function(String? pdfFromFiles)? selectPdfFiles,
  }) {
    return selectImageFromGallery?.call(imageFromGallery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String doctorId, String clinicId, String patientId,
            String appointmentId, String? note, String? imagePath)?
        upload,
    TResult Function(String? imageFromGallery)? selectImageFromGallery,
    TResult Function(String? imageFromCamera)? selectImageFromCamera,
    TResult Function(String? pdfFromFiles)? selectPdfFiles,
    required TResult orElse(),
  }) {
    if (selectImageFromGallery != null) {
      return selectImageFromGallery(imageFromGallery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Upload value) upload,
    required TResult Function(_SelectImageFromGallery value)
        selectImageFromGallery,
    required TResult Function(_SelectImageFromCamera value)
        selectImageFromCamera,
    required TResult Function(_SelectPdfFiles value) selectPdfFiles,
  }) {
    return selectImageFromGallery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Upload value)? upload,
    TResult? Function(_SelectImageFromGallery value)? selectImageFromGallery,
    TResult? Function(_SelectImageFromCamera value)? selectImageFromCamera,
    TResult? Function(_SelectPdfFiles value)? selectPdfFiles,
  }) {
    return selectImageFromGallery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Upload value)? upload,
    TResult Function(_SelectImageFromGallery value)? selectImageFromGallery,
    TResult Function(_SelectImageFromCamera value)? selectImageFromCamera,
    TResult Function(_SelectPdfFiles value)? selectPdfFiles,
    required TResult orElse(),
  }) {
    if (selectImageFromGallery != null) {
      return selectImageFromGallery(this);
    }
    return orElse();
  }
}

abstract class _SelectImageFromGallery implements UploadDocumentEvent {
  const factory _SelectImageFromGallery(final String? imageFromGallery) =
      _$SelectImageFromGalleryImpl;

  String? get imageFromGallery;
  @JsonKey(ignore: true)
  _$$SelectImageFromGalleryImplCopyWith<_$SelectImageFromGalleryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectImageFromCameraImplCopyWith<$Res> {
  factory _$$SelectImageFromCameraImplCopyWith(
          _$SelectImageFromCameraImpl value,
          $Res Function(_$SelectImageFromCameraImpl) then) =
      __$$SelectImageFromCameraImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? imageFromCamera});
}

/// @nodoc
class __$$SelectImageFromCameraImplCopyWithImpl<$Res>
    extends _$UploadDocumentEventCopyWithImpl<$Res, _$SelectImageFromCameraImpl>
    implements _$$SelectImageFromCameraImplCopyWith<$Res> {
  __$$SelectImageFromCameraImplCopyWithImpl(_$SelectImageFromCameraImpl _value,
      $Res Function(_$SelectImageFromCameraImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageFromCamera = freezed,
  }) {
    return _then(_$SelectImageFromCameraImpl(
      freezed == imageFromCamera
          ? _value.imageFromCamera
          : imageFromCamera // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SelectImageFromCameraImpl implements _SelectImageFromCamera {
  const _$SelectImageFromCameraImpl(this.imageFromCamera);

  @override
  final String? imageFromCamera;

  @override
  String toString() {
    return 'UploadDocumentEvent.selectImageFromCamera(imageFromCamera: $imageFromCamera)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectImageFromCameraImpl &&
            (identical(other.imageFromCamera, imageFromCamera) ||
                other.imageFromCamera == imageFromCamera));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageFromCamera);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectImageFromCameraImplCopyWith<_$SelectImageFromCameraImpl>
      get copyWith => __$$SelectImageFromCameraImplCopyWithImpl<
          _$SelectImageFromCameraImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String doctorId,
            String clinicId,
            String patientId,
            String appointmentId,
            String? note,
            String? imagePath)
        upload,
    required TResult Function(String? imageFromGallery) selectImageFromGallery,
    required TResult Function(String? imageFromCamera) selectImageFromCamera,
    required TResult Function(String? pdfFromFiles) selectPdfFiles,
  }) {
    return selectImageFromCamera(imageFromCamera);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String doctorId, String clinicId, String patientId,
            String appointmentId, String? note, String? imagePath)?
        upload,
    TResult? Function(String? imageFromGallery)? selectImageFromGallery,
    TResult? Function(String? imageFromCamera)? selectImageFromCamera,
    TResult? Function(String? pdfFromFiles)? selectPdfFiles,
  }) {
    return selectImageFromCamera?.call(imageFromCamera);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String doctorId, String clinicId, String patientId,
            String appointmentId, String? note, String? imagePath)?
        upload,
    TResult Function(String? imageFromGallery)? selectImageFromGallery,
    TResult Function(String? imageFromCamera)? selectImageFromCamera,
    TResult Function(String? pdfFromFiles)? selectPdfFiles,
    required TResult orElse(),
  }) {
    if (selectImageFromCamera != null) {
      return selectImageFromCamera(imageFromCamera);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Upload value) upload,
    required TResult Function(_SelectImageFromGallery value)
        selectImageFromGallery,
    required TResult Function(_SelectImageFromCamera value)
        selectImageFromCamera,
    required TResult Function(_SelectPdfFiles value) selectPdfFiles,
  }) {
    return selectImageFromCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Upload value)? upload,
    TResult? Function(_SelectImageFromGallery value)? selectImageFromGallery,
    TResult? Function(_SelectImageFromCamera value)? selectImageFromCamera,
    TResult? Function(_SelectPdfFiles value)? selectPdfFiles,
  }) {
    return selectImageFromCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Upload value)? upload,
    TResult Function(_SelectImageFromGallery value)? selectImageFromGallery,
    TResult Function(_SelectImageFromCamera value)? selectImageFromCamera,
    TResult Function(_SelectPdfFiles value)? selectPdfFiles,
    required TResult orElse(),
  }) {
    if (selectImageFromCamera != null) {
      return selectImageFromCamera(this);
    }
    return orElse();
  }
}

abstract class _SelectImageFromCamera implements UploadDocumentEvent {
  const factory _SelectImageFromCamera(final String? imageFromCamera) =
      _$SelectImageFromCameraImpl;

  String? get imageFromCamera;
  @JsonKey(ignore: true)
  _$$SelectImageFromCameraImplCopyWith<_$SelectImageFromCameraImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectPdfFilesImplCopyWith<$Res> {
  factory _$$SelectPdfFilesImplCopyWith(_$SelectPdfFilesImpl value,
          $Res Function(_$SelectPdfFilesImpl) then) =
      __$$SelectPdfFilesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? pdfFromFiles});
}

/// @nodoc
class __$$SelectPdfFilesImplCopyWithImpl<$Res>
    extends _$UploadDocumentEventCopyWithImpl<$Res, _$SelectPdfFilesImpl>
    implements _$$SelectPdfFilesImplCopyWith<$Res> {
  __$$SelectPdfFilesImplCopyWithImpl(
      _$SelectPdfFilesImpl _value, $Res Function(_$SelectPdfFilesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pdfFromFiles = freezed,
  }) {
    return _then(_$SelectPdfFilesImpl(
      freezed == pdfFromFiles
          ? _value.pdfFromFiles
          : pdfFromFiles // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SelectPdfFilesImpl implements _SelectPdfFiles {
  const _$SelectPdfFilesImpl(this.pdfFromFiles);

  @override
  final String? pdfFromFiles;

  @override
  String toString() {
    return 'UploadDocumentEvent.selectPdfFiles(pdfFromFiles: $pdfFromFiles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectPdfFilesImpl &&
            (identical(other.pdfFromFiles, pdfFromFiles) ||
                other.pdfFromFiles == pdfFromFiles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pdfFromFiles);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectPdfFilesImplCopyWith<_$SelectPdfFilesImpl> get copyWith =>
      __$$SelectPdfFilesImplCopyWithImpl<_$SelectPdfFilesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String doctorId,
            String clinicId,
            String patientId,
            String appointmentId,
            String? note,
            String? imagePath)
        upload,
    required TResult Function(String? imageFromGallery) selectImageFromGallery,
    required TResult Function(String? imageFromCamera) selectImageFromCamera,
    required TResult Function(String? pdfFromFiles) selectPdfFiles,
  }) {
    return selectPdfFiles(pdfFromFiles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String doctorId, String clinicId, String patientId,
            String appointmentId, String? note, String? imagePath)?
        upload,
    TResult? Function(String? imageFromGallery)? selectImageFromGallery,
    TResult? Function(String? imageFromCamera)? selectImageFromCamera,
    TResult? Function(String? pdfFromFiles)? selectPdfFiles,
  }) {
    return selectPdfFiles?.call(pdfFromFiles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String doctorId, String clinicId, String patientId,
            String appointmentId, String? note, String? imagePath)?
        upload,
    TResult Function(String? imageFromGallery)? selectImageFromGallery,
    TResult Function(String? imageFromCamera)? selectImageFromCamera,
    TResult Function(String? pdfFromFiles)? selectPdfFiles,
    required TResult orElse(),
  }) {
    if (selectPdfFiles != null) {
      return selectPdfFiles(pdfFromFiles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Upload value) upload,
    required TResult Function(_SelectImageFromGallery value)
        selectImageFromGallery,
    required TResult Function(_SelectImageFromCamera value)
        selectImageFromCamera,
    required TResult Function(_SelectPdfFiles value) selectPdfFiles,
  }) {
    return selectPdfFiles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Upload value)? upload,
    TResult? Function(_SelectImageFromGallery value)? selectImageFromGallery,
    TResult? Function(_SelectImageFromCamera value)? selectImageFromCamera,
    TResult? Function(_SelectPdfFiles value)? selectPdfFiles,
  }) {
    return selectPdfFiles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Upload value)? upload,
    TResult Function(_SelectImageFromGallery value)? selectImageFromGallery,
    TResult Function(_SelectImageFromCamera value)? selectImageFromCamera,
    TResult Function(_SelectPdfFiles value)? selectPdfFiles,
    required TResult orElse(),
  }) {
    if (selectPdfFiles != null) {
      return selectPdfFiles(this);
    }
    return orElse();
  }
}

abstract class _SelectPdfFiles implements UploadDocumentEvent {
  const factory _SelectPdfFiles(final String? pdfFromFiles) =
      _$SelectPdfFilesImpl;

  String? get pdfFromFiles;
  @JsonKey(ignore: true)
  _$$SelectPdfFilesImplCopyWith<_$SelectPdfFilesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UploadDocumentState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  String? get selectedDocument => throw _privateConstructorUsedError;
  UploadDocumentModel? get model => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadDocumentStateCopyWith<UploadDocumentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadDocumentStateCopyWith<$Res> {
  factory $UploadDocumentStateCopyWith(
          UploadDocumentState value, $Res Function(UploadDocumentState) then) =
      _$UploadDocumentStateCopyWithImpl<$Res, UploadDocumentState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String message,
      bool status,
      String? selectedDocument,
      UploadDocumentModel? model});
}

/// @nodoc
class _$UploadDocumentStateCopyWithImpl<$Res, $Val extends UploadDocumentState>
    implements $UploadDocumentStateCopyWith<$Res> {
  _$UploadDocumentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? message = null,
    Object? status = null,
    Object? selectedDocument = freezed,
    Object? model = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedDocument: freezed == selectedDocument
          ? _value.selectedDocument
          : selectedDocument // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as UploadDocumentModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $UploadDocumentStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String message,
      bool status,
      String? selectedDocument,
      UploadDocumentModel? model});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UploadDocumentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? message = null,
    Object? status = null,
    Object? selectedDocument = freezed,
    Object? model = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedDocument: freezed == selectedDocument
          ? _value.selectedDocument
          : selectedDocument // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as UploadDocumentModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.isError,
      required this.message,
      required this.status,
      this.selectedDocument,
      this.model});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String message;
  @override
  final bool status;
  @override
  final String? selectedDocument;
  @override
  final UploadDocumentModel? model;

  @override
  String toString() {
    return 'UploadDocumentState(isLoading: $isLoading, isError: $isError, message: $message, status: $status, selectedDocument: $selectedDocument, model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.selectedDocument, selectedDocument) ||
                other.selectedDocument == selectedDocument) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, message,
      status, selectedDocument, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements UploadDocumentState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool isError,
      required final String message,
      required final bool status,
      final String? selectedDocument,
      final UploadDocumentModel? model}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get message;
  @override
  bool get status;
  @override
  String? get selectedDocument;
  @override
  UploadDocumentModel? get model;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
