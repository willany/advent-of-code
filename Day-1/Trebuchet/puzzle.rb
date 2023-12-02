
def calibration
    @result = [];
    File.foreach("data.txt") { |line| 
        numbersByLine = line.delete("^0-9")
        @result.push([numbersByLine[0],numbersByLine[-1]].join().to_i)
    }
    puts @result.sum
end


calibration