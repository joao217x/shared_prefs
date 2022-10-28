// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currencies_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CurrenciesStore on _CurrenciesStoreBase, Store {
  late final _$isOfflineAtom =
      Atom(name: '_CurrenciesStoreBase.isOffline', context: context);

  @override
  bool get isOffline {
    _$isOfflineAtom.reportRead();
    return super.isOffline;
  }

  @override
  set isOffline(bool value) {
    _$isOfflineAtom.reportWrite(value, super.isOffline, () {
      super.isOffline = value;
    });
  }

  late final _$getPersistedDataAsyncAction =
      AsyncAction('_CurrenciesStoreBase.getPersistedData', context: context);

  @override
  Future<void> getPersistedData() {
    return _$getPersistedDataAsyncAction.run(() => super.getPersistedData());
  }

  late final _$setOfflineModeAsyncAction =
      AsyncAction('_CurrenciesStoreBase.setOfflineMode', context: context);

  @override
  Future<void> setOfflineMode(bool value) {
    return _$setOfflineModeAsyncAction.run(() => super.setOfflineMode(value));
  }

  late final _$getOfflineModeAsyncAction =
      AsyncAction('_CurrenciesStoreBase.getOfflineMode', context: context);

  @override
  Future<void> getOfflineMode() {
    return _$getOfflineModeAsyncAction.run(() => super.getOfflineMode());
  }

  late final _$_CurrenciesStoreBaseActionController =
      ActionController(name: '_CurrenciesStoreBase', context: context);

  @override
  void _setIsOffline(bool value) {
    final _$actionInfo = _$_CurrenciesStoreBaseActionController.startAction(
        name: '_CurrenciesStoreBase._setIsOffline');
    try {
      return super._setIsOffline(value);
    } finally {
      _$_CurrenciesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isOffline: ${isOffline}
    ''';
  }
}
