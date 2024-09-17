import 'package:bloc/bloc.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:injectable/injectable.dart';
import 'package:product_app/feature/product/domain/model/product_model.dart';
import 'package:product_app/feature/product/domain/repository/product_repository.dart';

part 'product_cubit.mapper.dart';

part 'product_state.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  final ProductRepository repository;

  ProductCubit(this.repository) : super(ProductState());

  Future<void> getProducts() async {
    emit(state.copyWith(isLoading: true,errorMessage: null));
    try {
      final productListModel = await repository.getProducts();
      final productsList = productListModel.products;
      emit(state.copyWith(products: productsList, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}
