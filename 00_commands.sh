#!/bin/bash

echo "version check"
rpm -qa | grep bash

echo -e "
bash options
-------------------------
bash -e **.sh
実行したコマンドが0でないステータスで終了した場合、即座に終了するオプション。

bash -x **.sh
デバッグ用。シェルスクリプト内で実際に実行されたコマンドを表示（変数は展開後)"

echo -e "
set -u
-------------------------
変数が未定義の場合はエラー扱い。rmとか危ないコマンドに添えて
"

echo -e "重複部分を共通化"
echo hoge{000,111,222}


echo -e "
sub shell (local eportなど)
-------------------------
ex.
(cd /usr; ls )
(var="fuga"; echo $var)

echo $var
->null
"


echo -e "最後に使った引数を再利用
mkdir ex_dir
cd !$
(bash script内部では利用できない)
"

echo -e "sudo でファイル書き込み
sudo sh -c \"echo hoge >> /etc/hoge\"

sedでファイル先頭追加
sed -i '1i test' test.txt
"


