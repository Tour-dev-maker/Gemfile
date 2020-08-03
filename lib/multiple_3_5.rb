def sum_of_3_and_5_multiples(n)
    i=0
    m=0
    test = n.kind_of? Integer
    if test !=true || n<0
        "!! yo je ne prends que les entiers naturels positifs !!"  
    else
         if (n==0 || n==3)
            m=0
        else
            while i < n do
                if (i % 3 == 0 || i % 5 == 0)
                    m = m + i
                    i += 1
                else 
                    i += 1
                end
            end
        end
        return m
    end
end





