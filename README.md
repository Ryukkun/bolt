# BOLT
人知れず[**BOLT**](https://archive.crowdford.com/maps/bolt)のデータパックをアップデートしていくよの会。  
バグったら土下座します  
- [**新機能**](https://github.com/Ryukkun/bolt#-%E6%96%B0%E6%A9%9F%E8%83%BD)
- [**バグ修正**](https://github.com/Ryukkun/bolt#-%E3%83%90%E3%82%B0%E4%BF%AE%E6%AD%A3)
- [**軽量化**](https://github.com/Ryukkun/bolt#-%E8%BB%BD%E9%87%8F%E5%8C%96)  

<br>

### 対応バージョン
- [1.16.x](https://github.com/Ryukkun/bolt/tree/1.16.5)
- [~~1.17.x ~ 1.18.x~~](https://github.com/Ryukkun/bolt/tree/1.17.1)
- [~~1.19.x~~](https://github.com/Ryukkun/bolt/tree/1.19.4)
- [~~1.20.4~~](https://github.com/Ryukkun/bolt/tree/1.20.4)

<br>

## 入れ方
1. [最新のrelease](https://github.com/Ryukkun/bolt/releases/latest)から`bolt_xxx.zip`をダウンロード。
2. `BOLTのワールドフォルダ > datapaks` にある`bolt`フォルダを削除。
3. 削除した`bolt`フォルダがあった場所に *1.* でダウンロードした`bolt_xxx.zip`をコピペ or 移動

解凍はしてもしなくてもどちらでも大丈夫です。  
**▼ このようになっていればOK！**  
```
BOLT(ワールドファイル)
  └── datapacks
        └── bolt_xxx or bolt_xxx.zip
              ├── data
              └── pack.mcmeta
```  

<br>

## ✨ 新機能
### >> 使われていなかったMAPの追加
Freeze_tag や Capture The Flag などで使用できます。  
巨大なマップなのでRandomでは選択されないようにしています。  

　▼ ScreenShots
|  |  |
|---|---|
|![2024-02-21_16 48 15](https://github.com/Ryukkun/bolt/assets/83561145/147fd5aa-23ea-4b48-be01-d5783afc706a)|![2024-02-21_16 48 56](https://github.com/Ryukkun/bolt/assets/83561145/4c6cce56-2248-4991-be53-18b611a16d8b)|  

<br>

### >> 当たり判定追加 (ON/OFF)
自分のチーム以外の人との当たり判定を有効にすることができます。  
初期設定はOFFです。  

　▼ ここで設定を変更できます<br>
 <img src="https://github.com/Ryukkun/bolt/assets/83561145/9bdd8248-9915-407f-96a3-c9246a4b0f24" width="50%" />  

<br>

### >> フレンドリーファイヤー (ON/OFF)
OFFにすることで、凍ってしまったプレイヤーが味方をキルしてしまうバグを修正することができます。  
これもBOLTの醍醐味と思う人は、ONにすることでフレンドリーファイヤーを有効化することができます。  
初期設定はOFF。    

　設定の変更は上記と同じ  

<br>

### >> 矢への効果
矢に対する挙動を変更することができます。現在実装されている項目は以下の通りです
| 効果 | 説明 |
|:---:|:---:|
| ノーマル | ノーマル（初期設定） |
| 操弾 | 撃たれた矢が撃ったプレイヤーが向いている方向に進む |

　設定の変更は上記と同じ

<br><br>

## 🐜 バグ修正
- [x] MCID変更時にバグる
- [x] 凍っている状態でプレイヤーに押されるなどして動いた場合、視点がリセットされる
- [x] 即死トラップ
- [x] キルログが正確ではない場合がある (例: `Ryukkun_ froze Ryukkun_` など、)

<br><br>

## 🐎 軽量化
 ▼ 同じ条件下で処理速度計測 単位は`ms(ミリセカンド)`  
&nbsp; &nbsp; &nbsp; 1tick（50ms）分の処理にかかった実時間を計測したものです。  
&nbsp; &nbsp; &nbsp; 簡単に言うと、低い方が良い。
| 条件 | オリジナルのデータパック | このデータパック |
| :---: | :---: | :---: |
| freezeTagアイドル時 | 5.8ms | 4.2ms |
| freezTag矢100個召喚 | 93.2ms | 11.4ms |

<br>

- [x] [uuid_check](https://github.com/Ryukkun/bolt/commits/main/data/kill_handle/functions/uuid_check)
- [x] 打たれた矢に対する処理を大幅変更
  - 処理速度は10倍以上に 
- 意味のないコマンド
- ターゲットセレクターの最適化  etc...
