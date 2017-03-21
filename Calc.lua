--creare una calcolatrice che esegue prima moltiplicazione e divisione poi somma e sottrazione 

input = io.read("*line")
ar = {}
for w in string.gmatch(input, "([^".."%s".."]+)") do
  table.insert(ar, w)
end

function count(tab)
  
  local index = 0
  
  for i = 2, table.maxn(tab), 2 do
      if tab[i] == "*" or tab[i] == "/" then
      index = index + 1 
      end
  end
  return index
end


function perDiv(tab)
   
  while (count(tab) >= 1) do
     
    for i = 1, table.maxn(tab) do
     
      if tab[i] == "*" then
        tab[i - 1] = tab[i - 1] * tab[i + 1]
        table.remove (tab, i)
        table.remove (tab, i)
        i = 1 
      elseif tab[i] == "/" then
        tab[i - 1] = tab[i - 1] / tab[i + 1]
        table.remove (tab, i)
        table.remove (tab, i)
        i = 1 
      else
        table[i] = table[i]
      end
  end
end
  return tab
end

ar = perDiv(ar)

function piuMen(tab)
  if table.maxn(tab) == 1 then
    return tab 
  else 
    while (table.maxn(tab) > 1) do
      for i = 1, table.maxn(tab) do
     
        if tab[i] == "+" then
          tab[i - 1] = tab[i - 1] + tab[i + 1]
          table.remove (tab, i)
          table.remove (tab, i)
          i = 1 
        elseif tab[i] == "-" then
          tab[i - 1] = tab[i - 1] - tab[i + 1]
          table.remove (tab, i)
          table.remove (tab, i)
          i = 1 
        else
          table[i] = table[i]
        end
      end
    end
  end
return tab 
end

ar = piuMen(ar)

for i = 1, table.maxn(ar) do
 print(ar[i])
end

