import 'package:bloc/bloc.dart';
import 'package:bookly/home_section/Data/models/book_models/book_models.dart';
import 'package:bookly/home_section/Data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());

  final HomeRepo homeRepo; // علشان نعرف نناديها

  Future<void> fetchNewsetBooks() async {
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((Failure) {
      emit(NewsetBooksFailure(Failure.errMessage));
    }, (books) {
      emit(NewsetBooksSuccess(books));
    });
  }
}
