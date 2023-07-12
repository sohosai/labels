# labels
labelsは[sohosai](https://github.com/sohosai)が持つリポジトリのラベルを管理するためのリポジトリです。
deployワークフローによってリポジトリのラベルを設定します。

## ラベルを追加する
`labels`の中に新しくJSONファイルを作成するか、既存のJSONにラベル情報を追加してください。
フォーマットは[github-label-sync](https://github.com/Financial-Times/github-label-sync)に従います。

[Demoワークフロー](https://github.com/sohosai/labels/actions/workflows/demo.yml)を手動実行すると[labels-sandbox](https://github.com/sohosai/labels-sandbox)に反映されるので、mainブランチにマージする前に挙動が適当がどうかを確認してください。

## 開発
開発にはNixを必要とします。
以下のコマンドを実行して開発環境に入ってください。

```
$ nix-shell
```

### [github-label-setup](https://github.com/azu/github-label-setup)の更新
github-label-setupを更新するには、nix-shell内で以下のコマンドを実行し、各Nixファイルの変更をコミットしてください。

```
$ node2nix -i node-packages.json -o nix/node-packages.nix -e nix/node-env.nix -c nix/github-label-sync.nix
```
