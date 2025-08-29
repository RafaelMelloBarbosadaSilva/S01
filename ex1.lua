io.write("Digite o valor de M (início do intervalo): ")
local M = tonumber(io.read())

io.write("Digite o valor de N (fim do intervalo): ")
local N = tonumber(io.read())

io.write("Digite o valor de X (número para encontrar múltiplos): ")
local X = tonumber(io.read())

print("\nMúltiplos de " .. X .. " no intervalo [" .. M .. ", " .. N .. "]:")
local encontrou = false

for i = M, N do
    if i % X == 0 then
        print(i)
        encontrou = true
    end
end

if not encontrou then
    print("Nenhum múltiplo de " .. X .. " encontrado no intervalo.")
end
