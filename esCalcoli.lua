--creare delle funzioni che eseguono le operazioni di base tra due numeri inseriti (OPZIONALE(e controllano che il risultato sia pari o dispari))
num1 = io.read("*number")
num2 = io.read("*number")

--qui dichiario le funzioni

function somma(a, b) 
  return a + b
end

function sottrai(a, b)
  return a - b
end

function moltiplica(a, b)
  return a * b
end

function dividi(a, b)
  return a / b
end

function verificaParita(num)
  if(num % 2 == 0)then -- %2 == 0 equivale a dire il resto della divisione per due è 0 quindi il numero è sempre pari
    print("ed è un numero pari")
  else
    print("ed è un numero dispari")
    end
end

--qui chiamo

print("Hai inserito " .. num1 .. " e " .. num2)

print("la somma dei due numeri è " .. somma(num1, num2)); print(verificaParita(somma(num1, num2)))
print("la differenza dei due numeri è " .. sottrai(num1, num2)); print(verificaParita(sottrai(num1, num2)))
print("il prodotto  dei due numeri è " .. moltiplica(num1, num2)); print(verificaParita(moltiplica(num1, num2)))
print("il quoziente dei due numeri è " .. dividi(num1, num2)); print(verificaParita(dividi(num1, num2)))
