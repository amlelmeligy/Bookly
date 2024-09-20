import 'package:bloc/bloc.dart';
import 'package:bookly/home_section/Data/models/book_models/book_models.dart';
import 'package:bookly/home_section/Data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo; // علشان نعرف نناديها

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(
      category: category,
    );

    result.fold((Failure) {
      emit(SimilarBooksFailure(Failure.errMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
