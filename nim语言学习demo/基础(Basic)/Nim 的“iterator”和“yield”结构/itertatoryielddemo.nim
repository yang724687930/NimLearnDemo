# 得益于 Nim 的“iterator”和“yield”结构，

# 迭代器和常规方法一样容易编写。

# 它们会被编译为内联循环。

iterator oddElements[Idx, T](a: array[Idx, T]): T =
    var i = 1
    while i < a.len:
      yield a[i]
      i += 2
  

for x in oddElements([10, 20, 30, 40, 50, 60]):
    echo x