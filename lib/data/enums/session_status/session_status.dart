// ignore_for_file: constant_identifier_names

import 'package:raizen_smart_squares/core/app_export.dart';

@JsonEnum()
enum SessionStatus {
  @JsonValue('STARTING')
  STARTING,
  @JsonValue('RUNNING')
  RUNNING,
  @JsonValue('ENDING')
  ENDING,
  @JsonValue('CLOSED')
  CLOSED,
}
