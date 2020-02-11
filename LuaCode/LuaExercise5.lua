---lua中的面相对象
---点和冒号的区别
---冒号定义的会多一个self,即这个表的实例
local a={}

function a.test(self)
    print("a.test",self)
end

a.test(a)

--self要正常运行需要两个点
--定义的函数必须是用冒号定义的
--冒号定义的函数，要使用冒号调用才能正常触发self机制
local b={}
function b:test(a)
    --self就是表的实例
    print("b:test",self)
end

--隐式self
b:test()
--显示self 第一个参数会默认是self
b.test(b)


--元表
local a={}
--元表的键 __index
local meta_a={
    __index={
        name="blake",
        age=34,
        sex=0,
    }
}
--两个表相加 meta_a叫做a的元表
--设置表的元素
setmetatable(a,meta_a)
--获取表的元素
print(getmetatable(a))

--使用元表中的key:__index
--当搜索一个表的key时，如果在当前的表里面没有搜索到，
---lua解释器就会去表的元表里面的__index泽哥key 所对应的表中寻找
print(a.name)

--lua没有面向对象的语法，但是可以模拟

--定义一个表代表类
local base={}
--给类添加一个函数
function base:test()
    print("base test")
end

--给类添加构造函数
function base:new(instance)
    if not instance then
        instance={};--要构造的类的实例
    end
    --将实例与函数的实例整合
    setmetatable(instance,{__index=self})
    --返回类的实例
    return instance
end

--创建一个实例,支持有参构造
local b=base:new(
        {
            name="cy";
        }
);
--调用实例的方法
b.test()
--调用实例的参数
print(b.name)

--面向对象总结
--定义一个类的表
--定义一个实例的表
--为这个实例的表添加一个元素，并且元素__index指向这个类的表
--利用self机制，隐式的将实例传到构造函数中

--继承
--基类是person
--子类 男人

local person={}
function person:test()
    print("person:test",self)
end
function person:get_age()
    print("person:get_age",self)
end

function person:new(instance)
    if not instance then
        instance={}
    end
    setmetatable(instance,{__index=self})
    
    return instance
end

local man=person:new()


function man:test_man()
    print("man:test_man",self)
end

function man:test_man2()
    print("man:test_man2",self)
end
--函数的重载 这里是天然重载，由于搜索特性造成的
function man:get_age()
    print("man:get_age", self)
    --调用基类的函数
    person.get_age(self)
end

local p=man:new()

print(p)
p:test_man()
p:test()
p:get_age()
--重载

