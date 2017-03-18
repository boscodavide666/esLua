-- creare un programma che conta da quante lettere sono composte le parole inserite dall'utente

inputstr = io.read("*lines")
-- la funzione split divide la stringa inserita in base agli spazi
function split(str)

  local t = {}
  local i = 1

  for _str in string.gmatch(str, "([^".."%s".."]+)") do
  t[i] = _str
  i = i + 1
  end

  return t
end

function conta(tab)

  local i

  for i = 1, table.maxn(tab) do
    local lenght = string.len(tab[i])
      if lenght == 1 then
        print (i .. "-" .. "la parola " .. tab[i] .. " è composta da " .. lenght .. " lettera")
      else
      print (i .. "-" .. "la parola " .. tab[i] .. " è composta da " .. lenght .. " lettere")
      end
  end
end

conta(split(inputstr))
