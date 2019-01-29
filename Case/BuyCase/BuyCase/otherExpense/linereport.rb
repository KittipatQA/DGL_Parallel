def savefile(filename, content)
    File.open(filename, 'w') { |file| file.write(content) }
    return true
end
text=File.open('C:\Users\USER1\.jenkins\workspace\DGL\Case\BuyCase\otherExpense\output.xml').read
text.each_line do |line|
    
    # <stat fail="1" id="s1" name="Ruj" pass="2">Ruj</stat>  // for this line
    # <stat fail="2" pass="25">All Tasks</stat>
    if (line =~ /stat fail="([^"]+)" pass="([^"]+)">(All[^<]+)<\/stat>/)
    
        #puts line
        a = "#{$2}"
        b = "#{$1}"
        c = a.to_i + b.to_i
        puts " pass=#{$2}, fail=#{$1}"
        write = "เคสทั้งหมด :  #{c} เคสผ่าน : #{$2} เคสไม่ผ่าน : #{$1}"
		puts write
        savefile("data.txt", write)
    end
    
end
