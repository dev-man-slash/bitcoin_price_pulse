import 'package:equatable/equatable.dart';

class UpdateTimeEntity extends Equatable {
  final String? updated;
  final String? updatedISO;
  final String? updateduk;

  const UpdateTimeEntity({
    this.updated,
    this.updatedISO,
    this.updateduk,
  });

  @override
  List<Object?> get props => [
        updated,
        updatedISO,
        updateduk,
      ];
}
