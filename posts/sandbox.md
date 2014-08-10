---
title: '始まりの砂場'
date: '2014-08-09'
description:
categories: [Unclassified]
tags: [Development]
widgets :
  google_prettify :
    enable: true
---

## これは何か

ブログを Markdown で書き始めることにした。これはそのテストだ。

{{# image }}
  theme/title_logo.png
{{/ image }}

このブログは
[ruhoh](http://ruhoh.com/) を用いて生成している。
標準の Markdown に画像の文法は無いので、小さなプラグインを作って、以下の形式で書けるようにした。

    // 実際には波括弧 2 つで書く
    {# image }
       path/to/image.png
    {/ image }

## ヘッダレベル 2

レベル 3 は以下のような見た目になる。

### ヘッダレベル 3

リストも書ける。

- ほげほげ
- ふがふが
- ぴよぴよ

罫線を引くことも

___

できるよ。

## テーブル

テーブルもプラグインを書いて、YAML 形式でアイテムを書けるようにした。
table タグを手で書くのはやっていられないからね。

{{# table }}
  -
    - head 1
    - head 2
    - head 3
  -
    - row 1-1
    - row 1-2
    - row 1-3
  -
    - row 2-1
    - row 2-2
    - row 2-3
{{/ table }}

以上だ。


