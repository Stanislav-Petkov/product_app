import 'package:flutter/material.dart';
import 'package:product_app/core/injection_container.dart';
import 'package:product_app/feature/product/domain/model/product_model.dart';
import 'package:product_app/feature/product/presentation/cubit/product_cubit.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  Future<void> _fetchProducts(BuildContext context) async {
    await context.read<ProductCubit>().getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductCubit>(),
      child: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          return Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                Center(
                  child: ElevatedButton(
                    onPressed: () => _fetchProducts(context),
                    child: const Text('Get Items'),
                  ),
                ),
                state.isLoading
                    ? const CircularProgressIndicator()
                    : Expanded(
                        child: state.products.isEmpty
                            ? const Center(child: Text('No products available'))
                            : ListView.builder(
                                itemCount: state.products.length,
                                itemBuilder: (context, index) {
                                  return ProductItem(
                                      product: state.products[index]);
                                },
                              ),
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final ProductModel product;

  const ProductItem({super.key, required this.product});

  static const placeholder = 'assets/images/placeholder.png';

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            product.thumbnail == null
                ? Image.asset(
                    placeholder,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  )
                : Image.network(
                    product.thumbnail!,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    product.title ?? '',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    product.description ?? '',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '\$${product.price}',
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
