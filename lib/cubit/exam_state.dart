import 'package:flutter/foundation.dart';

abstract class LessonState {
  const LessonState();
}

class LessonInitial extends LessonState {
  const LessonInitial();
}

class LessonLoading extends LessonState {
  const LessonLoading();
}

class LessonComplate extends LessonState {
  final List<String> response;
  const LessonComplate(this.response);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    {
      return o is LessonComplate && listEquals(o.response, response);
    }
  }

  @override
  int get hashCode => response.hashCode;
}

class LessonError extends LessonState {
  final errMessage;
  const LessonError(this.errMessage);
}
