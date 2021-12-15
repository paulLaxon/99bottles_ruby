class Bottles
  def song
    verses(99,0)
  end
  
  def verses(bottles1, bottles2)
    song = ""
    (bottles1.downto(bottles2)).each do |bottles|
      song += verse(bottles) + "\n"
    end
    song.chomp
  end
  def verse(bottles)
    if bottles == 0
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    elsif bottles == 1
      "#{bottles} bottle of beer on the wall, " +
      "#{bottles} bottle of beer.\n" +
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"
    elsif bottles == 2
      "#{bottles} bottles of beer on the wall, " +
      "#{bottles} bottles of beer.\n" +
      "Take one down and pass it around, " +
      "#{bottles - 1} bottle of beer on the wall.\n"
    else
      "#{bottles} bottles of beer on the wall, " +
      "#{bottles} bottles of beer.\n" +
      "Take one down and pass it around, " +
      "#{bottles - 1} bottles of beer on the wall.\n"
    end

  end
end