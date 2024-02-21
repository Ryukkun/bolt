# BOLT
人知れず[**BOLT**](https://archive.crowdford.com/maps/bolt)のデータパックをアップデートしていくよの会

<br>

## 入れ方
1. [最新のrelease](https://github.com/Ryukkun/bolt/releases/latest)をダウンロード。
2. `BOLTのワールドフォルダ > datapaks` にある`bolt`を削除。
3. 削除した`bolt`フォルダがあった場所に *1.* でダウンロードしたファイルをコピペ or 移動

解凍はしてもしなくてもどちらでも大丈夫です。<br>
▼ このようになっていれば大丈夫です<br>
```
BOLT(ワールドファイル)
  └── datapacks
        ├── 116_fix
        └── bolt or bolt.zip
              ├── data
              └── pack.mcmeta
```

<br>

## ✨ 新機能
### > 使われていなかったMAPの追加
Freeze_tag や Capture The Flag などで使用できます。<br>
巨大なマップなのでRandomでは選択されないようにしています。<br><br>

　▼ ScreenShots
|  |  |
|---|---|
|![2024-02-21_16 48 15](https://github.com/Ryukkun/bolt/assets/83561145/2862cafb-b55b-4757-8f19-370ec2d2efd0)|![2024-02-21_16 48 56](https://github.com/Ryukkun/bolt/assets/83561145/1a7cf792-904d-4aaa-bbef-cff1670c0aa6)|

<br><br>

### > 当たり判定追加 (ON/OFF)
自分のチーム以外の人との当たり判定を有効にすることができます。<br>
初期設定はOFFです。<br>

　▼ こちらより設定を変更できます<br>
 <img src="https://github.com/Ryukkun/bolt/assets/83561145/baf9dc4b-bed6-4950-bbee-eb25474ffcba" width="50%" />
 
<br><br>

### > フレンドリーファイヤー (ON/OFF)
OFFにすることで、凍ってしまったプレイヤーが味方をキルしてしまうバグを修正することができます。<br>
これもBOLTの醍醐味と思う人は、ONにすることでフレンドリーファイヤーを有効化することができます。<br>
初期設定はOFF。<br>

　設定の変更は上記と同じ

<br><br>

### やる気があったらやるリスト
- [ ] おまかせ編成
- [ ] フリーズ時に味方プレイヤーの視点に乗り移り観戦 (ON/OFF)

<br><br>

## 🐜 バグ修正
- [x] MCID変更時にバグる
- [x] 凍っている状態でプレイヤーに押されるなどして動いた場合、視点がリセットされる
- [x] 即死トラップ
- [x] キルログが正確ではない場合がある (例: `Ryukkun_ froze Ryukkun_` など、)


## 🐎 軽量化
- [x] [uuid_check](https://github.com/Ryukkun/bolt/commits/main/data/kill_handle/functions/uuid_check)
- [x] 打たれた矢の処理を大幅変更
- 意味のないコマンド
- ターゲットセレクターの最適化  etc...
