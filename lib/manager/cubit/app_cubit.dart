
import 'package:bookly/home_section/Data/models/book_models/book_models.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  List<BookModels> favoriteBooks = [];

  void addFavoriteBook(BookModels book) {
    if (favoriteBooks.contains(book)) {
      favoriteBooks.remove(book);
      emit(FavoriteBooksChanged());
     
    }else{
      favoriteBooks.add(book);
      emit(FavoriteBooksChanged());
    }
    
  }
}
