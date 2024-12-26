import 'package:flutter/material.dart';
import 'package:flutter_tricks/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostModel8(body: 'a');
  @override
  void initState() {
    super.initState();
    final user1 = PostModel(); // Hepsi null old. icin birsey istemedi
    user1.body = 'Hello';

    final user2 = PostModel2(1, 2, 'b', 'a');
    user2.body = 'a';

    final user3 = PostModel3(1, 2, 'a', 'b');
    //user3.body = 'a'; güncellemez

    final user4 =
        PostModel4(userId: 1, id: 2, title: 'a', body: 'b'); //Nmed parametre
    // user4.body = 'a';

    final user5 = PostModel5(userId: 1, id: 2, title: 'title', body: 'body');
    //user5.   //private olduğu için erişemiyor.
  }

  //Service
  final user8 = PostModel8();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user9 = PostModel8(title: 'On Pressed');
            user9.body = 'a';
          });
        },
      ),
      appBar: AppBar(
        title: Text(user9.body ?? 'Not have any data'),
      ),
    );
  }
}
