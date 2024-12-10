import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/app_enums.dart';
import '../../blocs/home_bloc/home_bloc.dart';

class CustomMenuBtn extends StatelessWidget {
  const CustomMenuBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      
      builder: (context, state) {
        return SizedBox(
          width: 40,
          child: AnimatedCrossFade(
            crossFadeState: _getCrossFadeState(context),
            firstChild: TextButton(
              onPressed: () => _menuBtnClicked(context),
              child: const Icon(Icons.menu),
            ),
            secondChild: TextButton(
              onPressed: (){
                context.read<HomeBloc>().add(
    ChangeAppBarHeadersAxis(AppBarHeadersAxis.vertical),
    
  );
  // Reset the certificate view when menu button is clicked
  context.read<HomeBloc>().add(ChangeAppBarHeadersIndex(0)); 
              },
              child: const Icon(Icons.close),
            ),
            duration: const Duration(milliseconds: 200),
          ),
        );
      },
    );
  }

  _menuBtnClicked(BuildContext context) {
    context.read<HomeBloc>().add(
          ChangeAppBarHeadersAxis(AppBarHeadersAxis.vertical),
          
        );
  }

  void _closeBtnClicked(BuildContext context) {
  // Change the axis to horizontal
  context.read<HomeBloc>().add(
        ChangeAppBarHeadersAxis(AppBarHeadersAxis.horizontal),
      );

  // Reset the app bar header index if necessary
  context.read<HomeBloc>().add(ChangeAppBarHeadersIndex(0));
}

  CrossFadeState _getCrossFadeState(BuildContext context) {
    final currentHeaderAxis = context.read<HomeBloc>().appBarHeaderAxis;
    return currentHeaderAxis == AppBarHeadersAxis.horizontal
        ? CrossFadeState.showFirst
        : CrossFadeState.showSecond;
  }
}
