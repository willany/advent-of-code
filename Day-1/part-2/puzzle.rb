
def calibration
    @result = [];
    @translate = { "one"=> 1, "two"=> 2, "three"=> 3, "four"=> 4, "five"=>5, "six"=> 6, "seven"=> 7, "eight"=> 8, "nine"=> 9 }

    File.foreach("data.txt") { |line|
        numbersByLine = line.scan(/(?=(one|two|three|four|five|six|seven|eight|nine|zero|\d))/).flatten

        first = @translate[numbersByLine[0]].to_s.empty? ? numbersByLine[0] : @translate[numbersByLine[0]];
        last = @translate[numbersByLine[-1]].to_s.empty? ? numbersByLine[-1] : @translate[numbersByLine[-1]];
        @result.push([first,last].join().to_i)
    }

    puts @result.sum
end


calibration
