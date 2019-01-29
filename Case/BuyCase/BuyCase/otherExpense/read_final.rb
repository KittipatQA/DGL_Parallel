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
    ARGV.each do |filename|
        
    name = filename
    # DGL SME Generator - OE Page Search
    namesplit = name.split(/ - /)
    name1 = namesplit[1]
    image_name = name1.gsub(/\.tsv$/,'')

    content_TS_OE_Lis_01_1 = ""
    content_TS_OE_Lis_02_0 = ""
    content_TS_OE_Lis_03_2 = ""
    content_TC_OE_Lis_03_0 = ""
    content_TC_OE_Lis_04_0 = ""
    content_TS_OE_Sr_01_1  = ""
    content_TS_OE_Sr_01_2  = ""
    content_TS_OE_Sr_01_3  = ""
    content_TS_OE_Sr_02_1_0  = ""
    content_TS_OE_Sr_02_2_0  = ""
    content_TS_OE_Sr_02_3_0  = ""
    content_TS_OE_Sr_03_1_0  = ""
    content_TS_OE_Sr_03_2_0  = ""
    content_TS_OE_Sr_03_3_0  = ""
    content_TS_OE_LSr_01_01_1  = ""
    content_TS_OE_LSr_01_01_0  = ""
    content_TS_OE_LSr_02_01    = ""
    content_TS_OE_LSr_02_01_0  = ""
    content_TS_OE_Add_Cr_01  = ""
    content_TS_OE_Add_Cr_02  = ""
    content_TS_OE_Cancel_01 = ""


    text=File.open(filename).read
    text.each_line do |line|
    # oe list
        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_Lis_01_1")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/"-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                cbx_paid  = data[7]
                cbx_outstanding  = data[8]
                cbx_cancel  = data[9]
                result  = data[10]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + cbx_paid + "   " + cbx_outstanding + "   " + cbx_cancel + "   " + result
                content_TS_OE_Lis_01_1 = content_TS_OE_Lis_01_1 + "\n"  + output
                header = readfile("D:/DGL/Header/TS_OE_Lis_1_Hd.resource")
                writefile("D:/DGL/Case/BuyCase/otherExpense/TC_OE_Lis_001.robot", header+content_TS_OE_Lis_01_1)
            end

        end   


        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_Lis_02_0")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/"-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                cbx_paid  = data[7]
                cbx_outstanding  = data[8]
                cbx_cancel  = data[9]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + cbx_paid + "   " + cbx_outstanding + "   " + cbx_cancel
                content_TS_OE_Lis_02_0 = content_TS_OE_Lis_02_0 + "\n"  + output
                header = readfile("D:/DGL/Header/TS_OE_Lis_0_Hd.resource")
                writefile("D:/DGL/Case/BuyCase/otherExpense/TC_OE_Lis_002.robot", header+content_TS_OE_Lis_02_0)

            end

        end   

        
        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TC_OE_Lis_03_2")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/"-]+/, '_')
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
                content_TS_OE_Lis_03_2 = content_TS_OE_Lis_03_2 + "\n"  + output
                header = readfile("D:/DGL/Header/TC_OE_Lis_2_Hd.resource")
                writefile("D:/DGL/Case/BuyCase/otherExpense/TC_OE_Lis_003_001.robot", header+content_TS_OE_Lis_03_2)

            end

        end   

    
        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TC_OE_Lis_03_0")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/"-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                cbx_paid  = data[7]
                cbx_outstanding  = data[8]
                cbx_cancel  = data[9]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + cbx_paid + "   " + cbx_outstanding + "   " + cbx_cancel
                content_TC_OE_Lis_03_0 = content_TC_OE_Lis_03_0 + "\n"  + output
                header = readfile("D:/DGL/Header/TS_OE_Lis_0_Hd.resource")
                writefile("D:/DGL/Case/BuyCase/otherExpense/TC_OE_Lis_003_002.robot", header+content_TC_OE_Lis_03_0)

            end

        end   

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_Lis_04_0")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/"-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                cbx_paid  = data[7]
                cbx_outstanding  = data[8]
                cbx_cancel  = data[9]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + cbx_paid + "   " + cbx_outstanding + "   " + cbx_cancel
                content_TC_OE_Lis_04_0 = content_TC_OE_Lis_04_0 + "\n"  + output
                header = readfile("D:/DGL/Header/TS_OE_Lis_0_Hd.resource")
                writefile("D:/DGL/Case/BuyCase/otherExpense/TC_OE_Lis_004.robot", header+content_TC_OE_Lis_04_0)

            end

        end   

        
        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_Sr_01_1")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/"-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                input   = data[7]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + input
                content_TS_OE_Sr_01_1 = content_TS_OE_Sr_01_1 + "\n"  + output
                header = readfile("D:/DGL/Header/TS_OE_Sr_1_Hd.resource")
                writefile("D:/DGL/Case/BuyCase/otherExpense/TC_OE_Sr_001_001.robot", header+content_TS_OE_Sr_01_1)

            end

        end   
        
        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_Sr_01_2")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/"-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                input   = data[7]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + input
                content_TS_OE_Sr_01_2 = content_TS_OE_Sr_01_2 + "\n"  + output
                header = readfile("D:/DGL/Header/TC_OE_Sr_2_Hd.resource")
                writefile("D:/DGL/Case/BuyCase/otherExpense/TC_OE_Sr_001_002.robot", header+content_TS_OE_Sr_01_2)

            end

        end

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_Sr_01_3")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/"-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                input   = data[7]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + input
                content_TS_OE_Sr_01_3 = content_TS_OE_Sr_01_3 + "\n"  + output
                header = readfile("D:/DGL/Header/TC_OE_Sr_3_Hd.resource")
                writefile("D:/DGL/Case/BuyCase/otherExpense/TC_OE_Sr_001_003.robot", header+content_TS_OE_Sr_01_3)

            end

        end

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_Sr_02_1")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/"-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                input   = data[7]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + input
                content_TS_OE_Sr_02_1_0 = content_TS_OE_Sr_02_1_0 + "\n"  + output
                header = readfile("D:/DGL/Header/TS_OE_Sr_0_Hd.resource")
                writefile("D:/DGL/Case/BuyCase/otherExpense/TC_OE_Sr_002_001.robot", header+content_TS_OE_Sr_02_1_0)

            end

        end

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_Sr_02_2")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/"-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                input   = data[7]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + input
                content_TS_OE_Sr_02_2_0 = content_TS_OE_Sr_02_2_0 + "\n"  + output
                header = readfile("D:/DGL/Header/TS_OE_Sr_0_Hd.resource")
                writefile("D:/DGL/Case/BuyCase/otherExpense/TS_OE_Sr_002_002.robot", header+content_TS_OE_Sr_02_2_0)

            end

        end

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_Sr_02_3")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/"-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                input   = data[7]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + input
                content_TS_OE_Sr_02_3_0 = content_TS_OE_Sr_02_3_0 + "\n"  + output
                header = readfile("D:/DGL/Header/TS_OE_Sr_0_Hd.resource")
                writefile("D:/DGL/Case/BuyCase/otherExpense/TS_OE_Sr_002_003.robot", header+content_TS_OE_Sr_02_3_0)

            end

        end

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_Sr_03_1")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/"-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                input   = data[7]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + input
                content_TS_OE_Sr_03_1_0 = content_TS_OE_Sr_03_1_0 + "\n"  + output
                header = readfile("D:/DGL/Header/TS_OE_Sr_0_Hd.resource")
                writefile("D:/DGL/Case/BuyCase/otherExpense/TS_OE_Sr_003_001.robot", header+content_TS_OE_Sr_03_1_0)

            end

        end

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_Sr_03_2")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/"-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                input   = data[7]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + input
                content_TS_OE_Sr_03_2_0 = content_TS_OE_Sr_03_2_0 + "\n"  + output
                header = readfile("D:/DGL/Header/TS_OE_Sr_0_Hd.resource")
                writefile("D:/DGL/Case/BuyCase/otherExpense/TS_OE_Sr_003_002.robot", header+content_TS_OE_Sr_03_2_0)

            end

        end

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_Sr_03_3")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/"-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                input   = data[7]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + input
                content_TS_OE_Sr_03_3_0 = content_TS_OE_Sr_03_3_0 + "\n"  + output
                header = readfile("D:/DGL/Header/TS_OE_Sr_0_Hd.resource")
                writefile("D:/DGL/Case/BuyCase/otherExpense/TS_OE_Sr_003_003.robot", header+content_TS_OE_Sr_03_3_0)

            end

        end

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_LSr_01_1")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/"-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                cbx_paid  = data[7]
                cbx_outstanding  = data[8]
                cbx_cancel  = data[9]
                result  = data[10]
                input   = data[11]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + cbx_paid + "   " + cbx_outstanding + "   " + cbx_cancel + "   " + result + "   " + input
                content_TS_OE_LSr_01_01_1 = content_TS_OE_LSr_01_01_1 + "\n"  + output
                header = readfile("D:/DGL/Header/TS_OE_LSr_1_Hd.resource")
                writefile("D:/DGL/Case/BuyCase/otherExpense/TS_OE_LSr_001_001.robot", header+content_TS_OE_LSr_01_01_1)

            end

        end

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_LSr_01_0")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/"-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                cbx_paid  = data[7]
                cbx_outstanding  = data[8]
                cbx_cancel  = data[9]
                result  = data[10]
                input   = data[11]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + cbx_paid + "   " + cbx_outstanding + "   " + cbx_cancel + "   " + input
                content_TS_OE_LSr_01_01_0 = content_TS_OE_LSr_01_01_0 + output
                header = readfile("D:/DGL/Header/TS_OE_LSr_0_Hd.resource")
                writefile("D:/DGL/Case/BuyCase/otherExpense/TS_OE_LSr_001_002.robot", header+content_TS_OE_LSr_01_01_0)

            end

        end

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_LSr_02")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/"-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                cbx_paid  = data[7]
                cbx_outstanding  = data[8]
                cbx_cancel  = data[9]
                result  = data[10]
                input   = data[11]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + cbx_paid + "   " + cbx_outstanding + "   " + cbx_cancel + "   " + input
                content_TS_OE_LSr_02_01 = content_TS_OE_LSr_02_01 + output
                header = readfile("D:/DGL/Header/TS_OE_LSr_0_Hd.resource")
                writefile("D:/DGL/Case/BuyCase/otherExpense/TS_OE_LSr_002_001.robot", header+content_TS_OE_LSr_02_01)

            end

        end

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_LSr_02_0")
                if (data[11]="")  
                    data[11]="${EMPTY}"
                end 
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/"-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                cbx_paid  = data[7]
                cbx_outstanding  = data[8]
                cbx_cancel  = data[9]
                result  = data[10]
                input   = data[11]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + cbx_paid + "   " + cbx_outstanding + "   " + cbx_cancel + "   " + input
                content_TS_OE_LSr_02_01_0 = content_TS_OE_LSr_02_01_0 + "\n"  + output
                header = readfile("D:/DGL/Header/TS_OE_LSr_0_Hd.resource")
                writefile("D:/DGL/Case/BuyCase/otherExpense/TS_OE_LSr_002_002.robot", header+content_TS_OE_LSr_02_01_0)

            end

        end

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_LSr_02_0")
                if (data[11]="")  
                    data[11]="${EMPTY}"
                end 
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/"-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                cbx_paid  = data[7]
                cbx_outstanding  = data[8]
                cbx_cancel  = data[9]
                result  = data[10]
                input   = data[11]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + cbx_paid + "   " + cbx_outstanding + "   " + cbx_cancel + "   " + input
                content_TS_OE_LSr_02_01_0 = content_TS_OE_LSr_02_01_0 + "\n"  + output
                header = readfile("D:/DGL/Header/TS_OE_LSr_0_Hd.resource")
                writefile("D:/DGL/Case/BuyCase/otherExpense/TS_OE_LSr_002_002.robot", header+content_TS_OE_LSr_02_01_0)

            end

        end

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_Add_Cr_001")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/"-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                code    = data[7]
                vattype     = data[8]
                transactionDate     = data[9]
                datePickerDueDate   = data[10]
                department   = data[11]
                billNo  = data[12]
                billDate = data[13]
                vatPeriod   = data[14]
                remark_customer  = data[15]
                bindingexpenseInfo  = data[16]
                number = data[17]
                unitPrice   = data[18]
                discount    = data[19]
                taxAmount   = data[20]
                remark_lish  = data[21]
                paymentCashAmount  = data[22]
                status_now  = data[23]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + code + "   " + vattype  + "   " + transactionDate  + "   " + datePickerDueDate  + "   " + department  + "   " + billNo  + "   " + billDate  + "   " + vatPeriod  + "   " + remark_customer  + "   " + bindingexpenseInfo  + "   " + number  + "   " + unitPrice  + "   " + discount  + "   " + taxAmount  + "   " + remark_lish  + "   " + paymentCashAmount  + "   " + status_now
                content_TS_OE_Add_Cr_01 = content_TS_OE_Add_Cr_01 + "\n"  + output
                header = readfile("D:/DGL/Header/TS_OE_Cr_Add_1_Hd.resource")
                writefile("D:/DGL/Case/BuyCase/otherExpense Add/TS_OE_Add_Cr_001.robot", header+content_TS_OE_Add_Cr_01)

            end

        end

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_Add_Cr_002")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/"-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                code    = data[7]
                vattype     = data[8]
                transactionDate     = data[9]
                datePickerDueDate   = data[10]
                department   = data[11]
                billNo  = data[12]
                billDate = data[13]
                vatPeriod   = data[14]
                remark_customer  = data[15]
                list  = data[16]
                number = data[17]
                unitPrice   = data[18]
                discount    = data[19]
                taxAmount   = data[20]
                remark_lish  = data[21]
                paymentCashAmount  = data[22]
                status_now  = data[23]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + code + "   " + vattype  + "   " + transactionDate  + "   " + datePickerDueDate  + "   " + billDate  + "   " + vatPeriod  + "   " + remark_customer  + "   " + list  + "   " + number  + "   " + unitPrice  + "   " + discount  + "   " + taxAmount  + "   " + remark_lish  + "   " + paymentCashAmount  + "   " + status_now
                content_TS_OE_Add_Cr_02 = content_TS_OE_Add_Cr_02 + "\n"  + output
                header = readfile("D:/DGL/Header/TS_OE_Cr_Add_2_Hd.resource")
                writefile("D:/DGL/Case/BuyCase/otherExpense Add/TS_OE_Add_Cr_002.robot", header+content_TS_OE_Add_Cr_02)

            end

        end

        if (line =~ /^\d/)
            data=line.split(/\t/)
            if (data[4]=="TS_OE_Cancel_001")
                no      = data[0]
                type    = data[1]
                detail  = data[2].gsub(/[\s&\/"-]+/, '_')
                predata = data[3]
                key     = data[4]
                user    = data[5]
                pass    = data[6]
                code    = data[7]
                vattype     = data[8]
                transactionDate     = data[9]
                datePickerDueDate   = data[10]
                department   = data[11]
                billNo  = data[12]
                billDate = data[13]
                vatPeriod   = data[14]
                remark_customer  = data[15]
                bindingexpenseInfo  = data[16]
                number = data[17]
                unitPrice   = data[18]
                discount    = data[19]
                taxAmount   = data[20]
                remark_lish  = data[21]
                paymentCashAmount  = data[22]
                status_now  = data[23]
                status_cancel = data[24]
                output = no + detail + "   " + user + "   " + pass + "   " + image_name + "   " + code + "   " + vattype  + "   " + transactionDate  + "   " + datePickerDueDate  + "   " + department  + "   " + billNo  + "   " + billDate  + "   " + vatPeriod  + "   " + remark_customer  + "   " + bindingexpenseInfo  + "   " + number  + "   " + unitPrice  + "   " + discount  + "   " + taxAmount  + "   " + remark_lish  + "   " + paymentCashAmount  + "   " + status_now  + "   " + status_cancel
                content_TS_OE_Cancel_01 = content_TS_OE_Cancel_01 + "\n"  + output
                header = readfile("D:/DGL/Header/TS_OE_Cancel_Delete_1_Hd.resource")
                writefile("D:/DGL/Case/BuyCase/otherExpense Cancel Delete/TS_OE_Cancel_001.robot", header+content_TS_OE_Cancel_01)

            end

        end

        end
    end
end