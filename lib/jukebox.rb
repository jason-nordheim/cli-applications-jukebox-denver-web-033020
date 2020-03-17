# Commands
HELP = "help" # help --> ouput instructions for the user on how to use the jukebox
LIST = "list" # list --> list the songs the user can play
PLAY = "play" # play --> should ask the user to input the name of a song OR a track number
EXIT = "exit" # exit --> should say goodbye, and end the program

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help()
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs_ary)
  puts "Please enter a song name or number:"
  response = gets.strip()
  song = songs_ary.find { |x| x == response }
  if song
    puts "Playing #{song}"
  else
    i = response.to_i()
    if i < songs_ary.count and i > 0
      puts "Playing #{songs_ary[i - 1]}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def list(songs_ary)
  songs_ary.each_with_index { | song, index | puts "#{index + 1}. #{song}" }
end

def exit_jukebox()
  puts "Goodbye "
end

def run
  input = nil
  while input != EXIT do
    puts 'Please enter a command:'
    input = gets.strip()
    if input == HELP
      help()

    end
  end
  exit_jukebox()
end
