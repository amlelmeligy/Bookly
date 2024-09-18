import 'package:bloc/bloc.dart';
import 'package:bookly/home_section/Data/models/book_models/book_models.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
