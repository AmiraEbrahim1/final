import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yisitapp/cubit/cubit.dart';
import 'package:yisitapp/cubit/states.dart';

class HomeBotNavigation extends StatelessWidget {
  final PageController pageController;

  const HomeBotNavigation({Key? key, required this.pageController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PubCubit, PubStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: PubCubit.get(context).index,
          items: const [
            BottomNavigationBarItem(
              label: '',
              icon: ImageIcon(AssetImage('images/Vector4.png')),
            ),
            BottomNavigationBarItem(
                label: '',
                icon: ImageIcon(
                  AssetImage('images/yisit-coloured-logo 2.png'),
                  size: 40,
                )),
            BottomNavigationBarItem(
              label: '',
              icon: ImageIcon(AssetImage('images/Combined-Shape.png')),
            )
          ],
          onTap: (index) async {
            PubCubit.get(context).changeNav(index);
            await pageController.animateToPage(index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeOut);
          },
        );
      },
    );
  }
}
