import 'package:flutter/material.dart';
import 'package:git_hub_searcher/presentation/bloc/user_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
      create: (context) => UserBloc(context.read()),
      child: const SearchPageWidget(),
    );
  }
}

class SearchPageWidget extends StatelessWidget {
  const SearchPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHubSearcher'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () => context.read<UserBloc>().add(BackToSearchPage()),
        ),
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is UserSuccess) {
            return Card(
              child: Column(
                children: [
                  Image.network(state.user.avatarUrl),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(state.user.name == ''
                      ? 'name is empty'
                      : 'name: ${state.user.name}'),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(state.user.email == ''
                      ? 'email is empty'
                      : 'email: ${state.user.email}'),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(state.user.location == ''
                      ? 'location is empty'
                      : 'location: ${state.user.location}')
                ],
              ),
            );
          }
          if (state is UserFailure) {
            return const Center(
              child: Text('user not found'),
            );
          }
          return Center(
            child: Column(
              children: [
                TextField(
                  controller: context.read<UserBloc>().textEditingController,
                ),
                const SizedBox(
                  height: 20,
                ),
                FloatingActionButton(
                    child: const Text('search'),
                    onPressed: () {
                      context.read<UserBloc>().add(UserFetch());
                    })
              ],
            ),
          );
        },
      ),
    );
  }
}
