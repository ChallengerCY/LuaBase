---Lua中的表达式

--赋值语句
local tempNum;
local tempObj;
tempNum=3;
tempObj="Hello Lua";--保存对象的引用
tempObj={[0]=1};--保存对象的引用

---Lua是顺序执行的。
---lua中字符串不能与基本类型相加

---lua中的数学运算
tempNum=tempNum+3;
tempNum=tempNum-3;
tempNum=tempNum*3;
tempNum=tempNum/3;
print(tempNum);

--()改变运算的优先级
tempNum=(tempNum+1)*3


--字符串加法 ..
print("hello ".."lua");

--lua没有简化表达式


--条件语句
--if 语句
-- 条件表达式 > >= <= < ~= ==
if tempNum~=3 then
    print("do if");
end

--多条件
-- 逻辑表达式 and(必须条件全成立) or(只要有一个条件成立) 
if true and false then
    print("不执行")
end

if true or true then
    print("执行")
end

--if else语句
if false then
    print("false");
else
    print("true");
end

--if elseif 语句 elseif 没有空格
if false then
    print("false");
elseif tempNum then
    print("true");
end


--循环语句
---for 初始值,结束值,每次迭代的步长(可写可不写,不写的时候步长为1)do end
for i = 1, 10 do
    print(i);
end

--带步长
for i = 1, 10,2 do
    print(i);
end

--反向循环
for i = 10, 0,-1 do
    print(i);
end

--while
--while 条件表达式 do end
local i=1;
local sum=0;
while i<=100 do
    sum=sum+i;
    i=i+1;
end
print(sum);
