import 'package:exam/cubit/exam_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LessonCubit extends Cubit<LessonState> {
  
  LessonCubit() : super(LessonInitial());

  Future<void> getLesson() async {
    try {
      emit(LessonLoading());
      await Future.delayed(Duration(seconds: 2)).then((value) async {
        final response = await Future.value(["bir", "ikki", "uch", "tort"]);
        emit(LessonComplate(response));
      });
    } catch (e) {
      emit(LessonError("Ma'lumot kelmay qoldi!!!"));
    }
  }
}
