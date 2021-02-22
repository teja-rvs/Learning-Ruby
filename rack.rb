rack = ['a', 'z', 'c', 't', 'v', 'a']
word = "cat".split('')
result = ''

word.each do |letter|
    lp = 0
    rp = rack.size() - 1;
    while lp <= rp do
        if (rack[lp] != letter && rack[rp] != letter)
            lp += 1
            rp -= 1
        elsif rack[lp] == letter
            flag = true
            break
        else
            flag = false
            break
        end
    end
    if flag
        val = ',LEFT'
        index = lp + 1
        rack = rack[lp + 1..-1] + rack[0..lp - 1]
    else
        val = ',RIGHT'
        index = rack.size() - rp
        rack = rack[rp + 1..-1].reverse + rack[0..rp] 
    end
    result += val * index
    result += ":#{letter}"
end
result[0] = ''
puts result
