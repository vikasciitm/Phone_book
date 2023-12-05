class Phone
    @@n
    @@a=0
    @@name=[]
    @@number=[]
    def newdata
        puts "****************************************"
        print "Enter the name:"
        @@name[@@a]=gets.chomp
        print "Enter the mobile number:"
        @@number[@@a]=gets.to_i
        @@a+=1
        puts "****************************************"
    end
    def display
        @@n=0
        puts "****************************************"
        print "No   Name         Number"
        while(@@n!=@@a)
            print "\n#{@@n}    #{@@name[@@n]}        #{@@number[@@n]}"
            @@n+=1
        end     
    end
    def delete
        puts "****************************************"
        print "\ndelete data #{@@n}"
        print "\n#{@@name[@@n]}        #{@@number[@@n]}"
        @@a-=1

    end
end
obj1=Phone.new
cho=1
while cho
    puts "\n****************************************"
    print "\nnewdata=1\ndisplay=2\ndelete=3\nexit=4\nEnter your cho:"
    cho=gets.to_i
    case cho
    when 1
        obj1.newdata
    when 2
        obj1.display
    when 3
        obj1.delete
    when 4
        break;
    else
        puts "your cho wrong"
    end
end 
