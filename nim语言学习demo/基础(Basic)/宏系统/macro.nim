# 使用 Nim 的宏系统

# 将密集的以数据为中心的x86指令描述

# 转换为汇编程序和JIT所使用的查找表

import macros, strutils

macro toLookupTable(data: static[string]): untyped =
    result = newTree(nnkBracket)
    for w in data.split(';'):
        result.add newLit(w)

const  
   data = "mov;btc;cli;xor"
   opcodes = toLookupTable(data)

for o in opcodes:
    echo o   