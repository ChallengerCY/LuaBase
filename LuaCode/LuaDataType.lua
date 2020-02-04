--- lua中的基本数据类型
------lua中是不分整数和小数的。

---整数
print(3);
---小数
print(3.2);
---小数转换整数
print(math.floor(3.2));

--逻辑数
print(true);

--单行注释

--[[
    多行注释
]]--

---局部变量
---temp是占用内存的 他的内存能够存放基本的数据类型和复杂对象的引用。
---存放基本数据类型
local temp=0;

---存放复杂对象的引用
local temp2="HelloWorld";

---空对象
local obj=nil;

--表结构(没有数组)
local list=
{
    [0]=1,--整数为索引
    key=2,--字符串索引
    ["0"]=3,
}

print(list[0]);--整数索引
print(list["key"]);--字符串索引
print(list.key);--字符串索引

list.addValue=4;
print(list.addValue);

---函数对象
function temp_func(value1,value2)
    print(value1,value2);
    return; --可以返回复杂对象，基本数据或者不返回。
    
end

--将函数赋值给函数对象
local fun=temp_func;
--通过函数对象调用
fun(1,2);
---直接调用函数
temp_func(1,2);

---带返回值的参数
function temp_func2()
    return {[0]=1,key=1};
end

local temp3=temp_func2();
print(temp3.key)





