import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class FloatMainNavigationView extends StatefulWidget {
  const FloatMainNavigationView({Key? key}) : super(key: key);

  @override
  State<FloatMainNavigationView> createState() =>
      _FloatMainNavigationViewState();
}

class _FloatMainNavigationViewState extends State<FloatMainNavigationView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: selectedIndex,
      child: Scaffold(
        extendBody: true,
        body: IndexedStack(
          index: selectedIndex,
          children: [
            const DashboardView(),
            const ListViewNew(),
            Container(
              color: Colors.purple[100],
            ),
            const ProfilView()
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff48B3EF),
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.add,
                color: Colors.white,
              ),
              SizedBox(
                height: 2.0,
              ),
              Text(
                'Create',
                style: TextStyle(
                  fontSize: 9.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: const Color(0xff48B3EF),
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: SizedBox(
            height: 60.0,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.home,
                        color: selectedIndex == 0
                            ? Colors.white
                            : Colors.blueGrey[600],
                      ),
                      onPressed: () {
                        selectedIndex = 0;
                        setState(() {});
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.list,
                        color: selectedIndex == 1
                            ? Colors.white
                            : Colors.blueGrey[600],
                      ),
                      onPressed: () {
                        selectedIndex = 1;
                        setState(() {});
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: selectedIndex == 2
                            ? Colors.white
                            : Colors.blueGrey[600],
                      ),
                      onPressed: () {
                        selectedIndex = 2;
                        setState(() {});
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.person,
                        color: selectedIndex == 3
                            ? Colors.white
                            : Colors.blueGrey[600],
                      ),
                      onPressed: () {
                        selectedIndex = 3;
                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
