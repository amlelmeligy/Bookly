import 'package:bookly/errors/Failures.dart';
import 'package:bookly/home_section/Data/models/book_models/book_models.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModels>>> fetchBestSellerBooks();
  Future<Either<Failures, List<BookModels>>> fetchFeaturedBooks();
}
