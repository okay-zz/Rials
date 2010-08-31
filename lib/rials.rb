require 'fileutils'

module RICK
  SONG = %(
  Never gonna give you up,
  Never gonna let you down,
  Never gonna run around and desert you,
  Never gonna make you cry,
  Never gonna say goodbye,
  Never gonna tell a lie and hurt you
  )

  def self.ROLL
    if `which say`['say']
      Thread.new do
        loop do
          sleep(5)
          SONG.split(',').each { |line| `say #{line.strip}`  }
        end
      end
    end
    Dir[File.join(File.dirname(__FILE__), 'data', "*.jpg")].each do |file|
      start = Time.new.to_f
      print "#{27.chr}[H" << File.read(file)
      sleep([0.0, 0.3 - (Time.new.to_f - start)].max)
    end
  end
end
