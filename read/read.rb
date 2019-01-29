def readfile(filename)
    text = File.open(filename).read
    return text
end

def writefile(filename, content)
    File.open(filename, "w") do |f|     
        f.write(content)
        f.close   
    end
end


if ARGV.length > 0

    name = ARGV[0]
    # DGL SME Generator - OE Page Search
    namesplit = name.split(/ - /)
    name1 = namesplit[1]
    image_name = name1.gsub(/\.tsv$/,'')

    content_TS_OE_Lis_001_1 = ""
    content_TS_OE_Lis_002_0 = ""
    content_TS_OE_Lis_003_2 = ""
    content_TC_OE_Lis_003_0 = ""
    content_TC_OE_Lis_004_0 = ""
    content_TS_OE_Sr_001_1  = ""
    content_TS_OE_Sr_001_2  = ""
    content_TS_OE_Sr_001_3  = ""
    content_TS_OE_Sr_002_1  = ""
    content_TS_OE_Sr_002_2  = ""

    text=File.open(ARGV[0]).read
    text.each_line do |line|
        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_Lis_001_1")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                cbx_paid  = data[7]
                cbx_outstanding  = data[8]
                cbx_cancel  = data[9]
                result  = data[10]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + cbx_paid + "   " + cbx_outstanding + "   " + cbx_cancel + "   " + result
                content_TS_OE_Lis_001_1 = content_TS_OE_Lis_001_1 + "\n"  + output + "\n"
            end

        end   

        header = readfile("D:/DGL For SME/Header/TS_OE_Lis_1_Hd.resource")
        writefile("D:/DGL For SME/Case/Buy Case/otherExpense/TC_OE_Lis_001.robot", header+content_TS_OE_Lis_001_1)

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_Lis_002_0")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                cbx_paid  = data[7]
                cbx_outstanding  = data[8]
                cbx_cancel  = data[9]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + cbx_paid + "   " + cbx_outstanding + "   " + cbx_cancel
                content_TS_OE_Lis_002_0 = content_TS_OE_Lis_002_0 + "\n"  + output + "\n"
            end

        end   

        header = readfile("D:/DGL For SME/Header/TS_OE_Lis_0_Hd.resource")
        writefile("D:/DGL For SME/Case/Buy Case/otherExpense/TC_OE_Lis_002.robot", header+content_TS_OE_Lis_002_0)

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TC_OE_Lis_003_2")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                cbx_paid  = data[7]
                cbx_outstanding  = data[8]
                cbx_cancel  = data[9]
                result  = data[10]
                result2  = data[11]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + cbx_paid + "   " + cbx_outstanding + "   " + cbx_cancel + "   " + result + "   " + result2
                content_TS_OE_Lis_003_2 = content_TS_OE_Lis_003_2 + "\n"  + output + "\n"
            end

        end   

        header = readfile("D:/DGL For SME/Header/TC_OE_Lis_2_Hd.resource")
        writefile("D:/DGL For SME/Case/Buy Case/otherExpense/TC_OE_Lis_003_001.robot", header+content_TS_OE_Lis_003_2)

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TC_OE_Lis_003_0")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                cbx_paid  = data[7]
                cbx_outstanding  = data[8]
                cbx_cancel  = data[9]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + cbx_paid + "   " + cbx_outstanding + "   " + cbx_cancel
                content_TC_OE_Lis_003_0 = content_TC_OE_Lis_003_0 + "\n"  + output + "\n"
            end

        end   

        header = readfile("D:/DGL For SME/Header/TS_OE_Lis_0_Hd.resource")
        writefile("D:/DGL For SME/Case/Buy Case/otherExpense/TC_OE_Lis_003_002.robot", header+content_TC_OE_Lis_003_0)

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_Lis_004_0")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                cbx_paid  = data[7]
                cbx_outstanding  = data[8]
                cbx_cancel  = data[9]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + cbx_paid + "   " + cbx_outstanding + "   " + cbx_cancel
                content_TC_OE_Lis_004_0 = content_TC_OE_Lis_004_0 + "\n"  + output + "\n"
            end

        end   

        header = readfile("D:/DGL For SME/Header/TS_OE_Lis_0_Hd.resource")
        writefile("D:/DGL For SME/Case/Buy Case/otherExpense/TC_OE_Lis_004.robot", header+content_TC_OE_Lis_004_0)

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_Sr_001_1")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                input   = data[7]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + input
                content_TS_OE_Sr_001_1 = content_TS_OE_Sr_001_1 + "\n"  + output + "\n"
            end

        end   

        header = readfile("D:/DGL For SME/Header/TS_OE_Sr_1_Hd.resource")
        writefile("D:/DGL For SME/Case/Buy Case/otherExpense/TC_OE_Sr_001_001.robot", header+content_TS_OE_Sr_001_1)

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_Sr_001_2")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                input   = data[7]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + input
                content_TS_OE_Sr_001_2 = content_TS_OE_Sr_001_2 + "\n"  + output + "\n"
            end

        end   

        header = readfile("D:/DGL For SME/Header/TC_OE_Sr_2_Hd.resource")
        writefile("D:/DGL For SME/Case/Buy Case/otherExpense/TC_OE_Sr_001_002.robot", header+content_TS_OE_Sr_001_2)

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_Sr_001_3")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                input   = data[7]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + input
                content_TS_OE_Sr_001_3 = content_TS_OE_Sr_001_3 + "\n"  + output + "\n"
            end

        end   

        header = readfile("D:/DGL For SME/Header/TC_OE_Sr_3_Hd.resource")
        writefile("D:/DGL For SME/Case/Buy Case/otherExpense/TC_OE_Sr_001_003.robot", header+content_TS_OE_Sr_001_3)

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_ฺSr_002_1")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                input   = data[7]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + input
                content_TS_OE_ฺSr_002_1 = content_TS_OE_ฺSr_002_1 + "\n"  + output + "\n"
            end

        end   

        header = readfile("D:/DGL For SME/Header/TS_OE_Sr_1_Hd.resource")
        writefile("D:/DGL For SME/Case/Buy Case/otherExpense/TS_OE_ฺSr_002_001.robot", header+content_TS_OE_ฺSr_002_1)

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_ฺSr_002_2")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                input   = data[7]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + input
                content_TS_OE_ฺSr_002_2 = content_TS_OE_ฺSr_002_2 + "\n"  + output + "\n"
            end

        end

        header = readfile("D:/DGL For SME/Header/TC_OE_Sr_2_Hd.resource")
        writefile("D:/DGL For SME/Case/Buy Case/otherExpense/TS_OE_ฺSr_002_002.robot", header+content_TS_OE_ฺSr_002_2)

        end

    end