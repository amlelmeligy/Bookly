import 'package:bloc/bloc.dart';
import 'package:bookly/errors/Failures.dart';
import 'package:bookly/home_section/Data/models/book_models/book_models.dart';
import 'package:bookly/home_section/Data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo; // علشان نعرف نناديها

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((Failure) {
      emit(FeaturedBooksFailure(Failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}