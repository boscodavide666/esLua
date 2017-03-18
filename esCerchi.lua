--dati due raggi inseriti dall'utente calcolare le due circonferenze e la differenza tra le due

raggio1 = io.read("*number")
raggio2 = io.read("*number")

function calcCirc(raggio)
  circ = raggio * 2 * math.pi -- math.pi = funzione pi della libreria math che ritorna il valore di pigreco quindi raggio per due per pigreco = circonferenza
  return circ
end

function calcDiff()
  diff = math.abs(calcCirc(raggio1) - calcCirc(raggio2)) --math.abs altra funzione di maths che ritorna il valore assoluto di un numero
  return diff
end


if raggio1 ~= raggio2 then
print("Hai inserito " .. raggio1 .. " e " .. raggio2 .. " la prima circonferenza misura " .. calcCirc(raggio1) .. " la seconda " .. calcCirc(raggio2) .. "la differenza tra le due circonferenze è " .. calcDiff(calcCirc(raggio1) - calcCirc(raggio2)))

else
print("Entrambi i raggi misurano " .. raggio1 .. " perciò entrambe le circonferenze misurano " .. calcCirc(raggio1) .. " e tra le due non c'è differenza" )
end
