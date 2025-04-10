import 'validation_model.dart';

class GeneralResponseModel {
  const GeneralResponseModel(
      {required this.message, required this.status, this.validation});

  final String message;
  final bool status;
  final ValidationModel? validation;

  factory GeneralResponseModel.fromJson(Map<String, dynamic> map) {
    return GeneralResponseModel(
      message: map['message'] ?? "",
      status: map['status'] ?? false,
      validation: map['validation'] != null
          ? ValidationModel.fromJson(map['validation'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {'status': status, 'message': message, 'error': message};
  }
}