function calculadora(a, b, operador)
    if operador == "+" then
        return a + b
    elseif operador == "-" then
        return a - b
    elseif operador == "*" then
        return a * b
    elseif operador == "/" then
        if b ~= 0 then
            return a / b
        else
            return "Erro: divisão por zero!"
        end
    else
        return "Erro: operador inválido!"
    end
end

io.write("\nDigite o primeiro número: ")
local num1 = tonumber(io.read())

io.write("Digite o segundo número: ")
local num2 = tonumber(io.read())

io.write("Digite o operador (+, -, *, /): ")
local op = io.read()

local resultado = calculadora(num1, num2, op)
print("Resultado: " .. tostring(resultado))
