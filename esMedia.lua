-- dato un insieme di numeri inseriti dall'utente calcolarne la media

inputstr = io.read("*lines")

function split(str)

  local t = {}
  local i = 1

  for _str in string.gmatch(str, "([^".."%s".."]+)") do
  t[i] = tonumber(_str)
  i = i + 1
  end

  return t
end


function media (tab)
  local sum = 0
  for j = 1, table.maxn(tab) do
     sum = sum + tab[j]
  end

  res = sum / table.maxn(tab)
  return res
end

print("la media dei valori è " .. media(split(inputstr)))
