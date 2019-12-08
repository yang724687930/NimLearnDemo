#[
    var语句声明一个本地或全局变量:

]#
var x1,y1: int  int # 声明x和y拥有类型 ``int``

#[
    缩进可以用在 var 关键字后来列一个变量段。
]#

var 
    x2,y2: int
    #可以有注释
    a,b,c: string

echo a,b,c,x1,y1,x2,y2