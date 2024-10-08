# Mi pequeño proyecto en Lua

Esta es una pequeña introducción que he querido hacerme al lenguaje Lua, voy a intentar explicar mi código mediante este documento:

## Primera parte

```lua
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
```

En las primeras líneas he tratado de hacer un comentario multilínea para poner mi nombre, después hago varias variables locales (que solamente están en el archivo): una con la edad de alguien ("integer"), otra con un carácter ("string" [Lua no diferencia los "char" y "string"]), otra con un string de varias líneas y otra con valor nulo ("nil"), me he introducido empezando por un concepto muy básico de la programación que son las variables.

## Segunda parte

```lua
print(u)
print(tn)

while edad < 50 do
    edad = edad + 1
end

if edad > 14 then
    print('mayor a 14')
end
```

Después de la primera parte de mi código, mando una instrucción al programa diciendo que imprima a la consola el "string" multilínea y el valor nulo ("nil"). Las siguientes instrucciones que tiene el programa son que mientras la variable "edad" ("integer") sea menor a 50 tiene que aumentarla, después dice que si la edad es mayor que 14 tiene que imprimir "mayor a 14".

## Tercera parte

```lua
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
```

Primero, le digo al programa que si el carácter que puse es diferente de "xx" tiene que mandar a la consola (usando una función diferente a "print") la cadena "mayor a 14x" y hacer un salto de línea (nótese que se pone "\n" para esta función). Después de eso, el programa crea una variable local (de tipo "integer" y llamada "karlSum") que es igual a 0 y hace un bucle "for" en decremento del 100 al 1 (sumando lo que da el bucle más el valor actual de la variable y asignando esto como valor a "karlSum"), al final va a imprimir la variable "karlSum" que es igual a 5050. Finalmente, crea una variable local llamada "x" que es igual a 5 (de tipo "integer") y hace un bucle "repeat" (parecido al "while") que imprime la cadena "el camino del futuro" y asigna a la variable "x" el valor de esta misma menos 1, cuando "x" sea igual a 0 el bucle se detendrá.

## Cuarta parte

```lua
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
```

Aquí toco el tema de las funciones en Lua y hago una para la función de Fibonacci además de otra que es recursiva y sirve para devolver otra función que suma el parámetro de la primera con el de la segunda. Después creo un diccionario guardado en una variable local que se llama "t" y hago un bucle "for" con la función "pairs" que imprima todas sus claves y valores.
