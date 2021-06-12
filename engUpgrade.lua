--written by #trashplusplus

math.randomseed(os.time())
local correctCounter = 0
local wrongCounter = 0
local introText = "\27[001;95m [ UPGRADE YOUR ENGLISH SKILLS] \27[0m \n"
local random = 0
words = {}
translate = {}

for line in io.lines("words.txt") do
		local w = line
		
		table.insert(words, w)

end

for line in io.lines("translate.txt") do

	local w = line
	table.insert(translate, w)
end

io.write("\027[H\027[2J")
io.write(introText)
io.write(" [ " .. " Всего слов: " .. #words .. " ] \n \n");

for i = 0, math.huge do
	
	random = math.random(1, #words)

	
	print(words[random] .. ": ") --итерация
	
 
	tr1 = io.read("*l")	
	if tr1 == translate[random] then
		correctCounter = correctCounter + 1
		print("\27[001;92m CORRECT! \27[0m" .."[ " .. correctCounter .. " ]")
	else 
		
		wrongCounter = wrongCounter + 1
		print("\27[001;91m WRONG! \27[0m" .."[ " .. wrongCounter .. " ] \n" .. " Правильно: " .. translate[random] .. "\n")



	end
end
