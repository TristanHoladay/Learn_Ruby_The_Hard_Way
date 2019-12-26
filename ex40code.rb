class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line}
  end
end

happy_bday = Song.new(["Happy birthday to you",
            "I don't want to get sued",
            "So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around tha family",
                "With a pocket full of shells"])

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()


somebody_else = Song.new(["i don't want your body",
                "but i hate the though of you",
                "with somebody else"])

till_i_found_you = Song.new(["i never thought",
                    "anything could be forever",
                    "until i found you"])

somebody_else.sing_me_a_song()

till_i_found_you.sing_me_a_song()


american = ["if she says i've got to fix my teeth", "Then she's so american"]

she_is_so_american = Song.new(american)

she_is_so_american.sing_me_a_song()


class Songs

    def initialize
      @songy = "Songs are good"
    end

    def favs
      puts "Give fav song"
      fsong = $stdin.gets.chomp
      puts "#{fsong}"
    end
end

    songg = Songs.new
    puts songg # gives the id of the object (i think?)

    songg.favs()
