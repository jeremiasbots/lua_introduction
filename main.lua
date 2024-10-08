--[[
  Devep
]] --
local edad = 15
local str = "m"
local u = [[
  Lorem ipsum dolor sit,
  amet...
]]
local tn = nil

print(u)
print(tn)

while edad < 50 do
    edad = edad + 1
end

if edad > 14 then
    print('mayor a 14')
end

if str ~= 'xx' then
    io.write('mayor a 14x\n')
end

local karlSum = 0
for i = 100, 1, -1 do
    karlSum = karlSum + i
end
print(karlSum)

local x = 5
repeat
    print('el camino del futuro')
    x = x - 1
until x == 0

function fib(n)
    if n < 2 then return 1 end
    return fib(n - 2) + fib(n - 1)
end

function adder(n)
    return function(f) return f + n + 1 end
end

a1 = adder(5)
print(a1(4))

local t = { key1 = 'devep', key2 = 18, key3 = 'do' }
for c, v in pairs(t) do
    print(c, v)
end
