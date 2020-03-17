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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(song)

end

def list(songs_ary)
  songs_ary.each_with_index { | song, index | puts "#{index + 1}. #{song}" }
end

def exit_jukebox
end

def run
end
