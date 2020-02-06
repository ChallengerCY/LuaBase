local str1="Hello"
local str2="Lua"

--字符串相加
print(str1..str2)
--字符串连接数据类型
print(str2..3)
print(str2..3.8)

--数字转换字符串
print(tostring(8.4));
print(""..8.4);
local value=7;
print(""..value)

--字符串转数字
--非数字的字符串会转换成nil
print(tonumber("9.6"))

local str="HelloWorld";
print(str.len(str));

--重复打出一个字符串
str=string.rep('lua',3);
print(str);

--转换小写
str="AABBCC";
str=string.lower(str);
print(str)
---转换大写
str=string.upper(str);
print(str)

--获取字符串的子字符串，索引从1开始不是从0开始
str=str.sub("Hello",2,5);
print(str);

--格式化字符串
local date=string.format("%d-%d-%d",2016,10,2)
print(date)

--查找子串的位置
--索引也是从1开始
str="HelloWorld"
local index=string.find(str,"World")
print("World at pos: "..index);

--替换字符串中的某个字符串
str="sggdwe"
str=string.gsub(str,"gg","a",1)
print(str)

--数组部分，索引从1开始
local list={1,2,3}
print(list[1])

--返回lua表里数组部分的长度
--要求表里面的数据必须是连续的
print(#list)


--遍历表里面数组的部分 方法1
local index=1
for index = 1, #list do
    print(list[index])
end

--遍历表里面所有的元素 方法2
--[[for k , v in ipairs(list) do
    print("key: "..k,"value: "..v);
end]]

--往数组的指定部位插一个值，如果不指定就会插入到数组的最后
table.insert(list,2,8)

--删除表里面的一个元素
table.remove(list,2)


--比较一个数组
local array_data={3,2,1,3,4,5}
table.sort(array_data);


--自定义排序
--lua 要保证排序是稳定的 即同样的两个数每次的比较结果需要一样
local function comp1(data1,data2)
    if data1<data2 then
        return false
    else
        return true
    end
end
table.sort(array_data,comp1)
for k , v in ipairs(array_data) do
    print("key: "..k,"value: "..v);
end
