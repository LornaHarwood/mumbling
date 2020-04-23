require "pry"

class Mumbling
  def accum(string)
    array = string.split("")
    mumbled_string = array.each_with_index do |letter, index|
      number_of_letters = index + 1
      case index
      when 0
        array[index] = "#{letter.capitalize}"
      when 1
        array[index] = "-#{letter.capitalize}#{letter}"
      else
        array[index] = "-#{number_of_letters.times.collect { letter }.join.capitalize}"
      end
    end
    mumbled_string.join("")
  end
end
