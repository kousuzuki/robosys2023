#!/bin/bash
# SPDX-FileCopyrightText: 2023 Kou Suzuki
# SPDX-License-Identifier: BSD-3-Clause


ng() {
    echo "NG at Line $1"
    res=1
}

res=0

# テスト対象のプログラムを呼び出して出力を取得
out=$(seq 5 | ./plus)

# 期待される出力
expected_output="15.0 5 3.0"

# 出力が期待される結果と一致するか確認
if [ "$out" != "$expected_output" ]; then
    ng ${LINENO}
fi

# エラーがなければOKを表示
[ "$res" = 0 ] && echo "OK"

# テスト結果を終了コードとして返す
exit $res


