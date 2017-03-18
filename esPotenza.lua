-- creare un programma che, inseriti in input base ed esponente calcoli la potenza

print("Inserisci la base")
inbase = io.read("*number")
print("Inserisci l'esponente")
inesponente = io.read("*number")

function potenza(base, esponente)

  local int = base
  local i

  for i = esponente - 1, 1, -1 do
    base = base * int
    end

  return base
end

print(potenza(inbase, inesponente))

-- in realtà per fare la potenza basta fare math.pow(base, esponente)
