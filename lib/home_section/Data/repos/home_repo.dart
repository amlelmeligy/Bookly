import 'package:bookly/errors/failures.dart';
import 'package:bookly/home_section/Data/models/book_models/book_models.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModels>>> fetchNewsetBooks();
  Future<Either<Failures, List<BookModels>>> fetchFeaturedBooks();
  Future<Either<Failures, List<BookModels>>> fetchSimilarBooks(
      {required String category});
}
