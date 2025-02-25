import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLearnCache extends StatefulWidget {
  const SharedLearnCache({Key? key}) : super(key: key);

  @override
  _SharedLearnCacheState createState() => _SharedLearnCacheState();
}

class _SharedLearnCacheState extends LoadingStatefull<SharedLearnCache> {
  int _currentValue = 0;

  @override
  void initState() {
    getDefaultValues();
  }

  Future<void> getDefaultValues() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    int? counter = prefs.getInt('counter');
    _onChangeValue(counter.toString());
  }

  void _onChangeValue(String value) {
    final _value = int.tryParse(value);
    if (_value != null) {
      setState(() {
        _currentValue = _value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          isLoading
              ? Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                )
              : SizedBox.shrink(),
        ],
        title: Text(
          _currentValue.toString(),
        ),
      ),
      floatingActionButton: Row(
        children: [
          _saveValueButton(),
          SizedBox(width: 20),
          _removeValueButton(),
        ],
      ),
      body: TextField(
        onChanged: (value) {
          _onChangeValue(value);
        },
      ),
    );
  }

  FloatingActionButton _saveValueButton() {
    return FloatingActionButton(
      onPressed: () async {
        _changeLoading();
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setInt('counter', _currentValue);
        _changeLoading();
      },
      child: Icon(Icons.save),
    );
  }

  FloatingActionButton _removeValueButton() {
    return FloatingActionButton(
      onPressed: () async {
        _changeLoading();
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.remove(
          'counter',
        );
        _changeLoading();
      },
      child: Icon(Icons.remove),
    );
  }
}

//Generic
abstract class LoadingStatefull<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;

  void _changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
