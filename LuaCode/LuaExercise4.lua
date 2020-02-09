--lua多返回值

function mul_return_func()
    return 3,"mul_value"
end

--接收多个返回值
--如果只定义一个接受值，那么只接受第一个参数。
local first,second=mul_return_func()
print(second)


--unpack 解表函数 本质是利用多返回值
local array_data={1,2,3,4,5};
local _,_,_,b,c=table.unpack(array_data);

print(b,c)



--lua虚拟机啊加载lua的第一个脚本执行；
--再由这个脚本去包含其他的脚本；
--代码不会都写到一个脚本；
--一般会把逻辑相同代码，功能相同的代码放到一起。
--方便代码的维护，代码模块其他lua代码
--require的目录指的是工作目录
--多次require只会装载一次脚本，但是返回值会多次返回。
--require无法使用local定义的东西
--require  使用方式一
--require("HelloLua")

--require  使用方式二
--require "HelloLua"

--接收一个require的返回值 默认返回true
local req=require("HelloLua")
print(req)

