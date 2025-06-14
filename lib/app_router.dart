import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_breaking/business_logic/cubit/characters_cubit.dart';
import 'package:flutter_breaking/constants/strings.dart';
import 'package:flutter_breaking/data/repository/characters_repository.dart';
import 'package:flutter_breaking/data/web_services/characters_web_services.dart';
import 'package:flutter_breaking/presentaion/screens/characters_screen.dart';
import 'package:flutter_breaking/presentaion/screens/characters_details.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersRepository = CharactersRepository(CharactersWebServices());
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case CharactersScreene:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (BuildContext context) => charactersCubit,

                child: CharactersScreen(),
              ),
        );

      case characterDetailsScreen:
        return MaterialPageRoute(builder: (_) => CharacterDetailsScreen());
    }
  }
}
