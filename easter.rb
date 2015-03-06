# Algorithm for calculating Easter based of Gauss' method
# main will calculate easter's date for the next ten years.

def easter(year)
    a = year % 19
    b = year % 4
    c = year % 7
    k = (year/100).floor
    p = ((13 + 8*k)/25).floor
    q = (k/4).floor
    m = (15-p+k-q) % 30
    n = (4 + k - q) % 7
    d = (19*a + m) % 30
    e = (2*b + 4*c + 6*d + n) % 7

    if 22 + d + e > 31
        if d == 29 and e == 6
            puts "Easter is April 19 " + year.to_s
        elsif d == 28 and e == 6 and (((11*m + 11) % 30) < 19)
            puts "Easter is April 18 " + year.to_s
        else
            puts "Easter is April " + (d + e - 9).to_s + " " + year.to_s
        end
    else
        puts "Easter is March " +  (22 + d + e).to_s + " " + year.to_s
    end
end

(2015..2025).each do |year|
    easter(year)
end
