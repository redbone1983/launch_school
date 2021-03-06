# Initialize array of valid choices
VALID_CHOICES = %w(r p s sp l)

TITLE = '
 \    / _  |  _  _  ._ _   _    _|_  _  
  \/\/ (/_ | (_ (_) | | | (/_    |_ (_) 
                                        
   ___   ___   __    _                          
  | |_) / / \ / /`  | |_/                       
  |_| \ \_\_/ \_\_, |_| \                       

   ___    __    ___   ____  ___                 
  | |_)  / /\  | |_) | |_  | |_)                
  |_|   /_/--\ |_|   |_|__ |_| \                

   __   __    _   __   __   ___   ___   __      
  ( (` / /`  | | ( (` ( (` / / \ | |_) ( (`     
  _)_) \_\_, |_| _)_) _)_) \_\_/ |_| \ _)_)     

   __   ___   ___   __    _                     
  ( (` | |_) / / \ / /`  | |_/                  
  _)_) |_|   \_\_/ \_\_, |_| \                  

   _     _  ____   __    ___   ___              
  | |   | |  / /  / /\  | |_) | | \             
  |_|__ |_| /_/_ /_/--\ |_| \ |_|_/             

'

# Initialize weapons hash
weapons = {
  rock: "r",
  paper: "p",
  scissors: "s",
  spock: "sp",
  lizard: "l"
}


R_ART = '

~~~~---...________.---~~~~~~~~~~~~~~~~.
                                        \
                                __/      `.
                             .-| \ `-.     \
                         .  /\   /  / /    /
                          `/ /  /  /.~    /
                            `-.______.-----.
.......______                           |~~~ `.
             ~~--.._                    |___) )
                    ~--._____________.-------"


'

P_ART = '
▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄ 
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌
▐░▌       ▐░▌▐░▌       ▐░▌▐░▌       ▐░▌▐░▌          ▐░▌       ▐░▌
▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌
▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀█░█▀▀ 
▐░▌          ▐░▌       ▐░▌▐░▌          ▐░▌          ▐░▌     ▐░▌  
▐░▌          ▐░▌       ▐░▌▐░▌          ▐░█▄▄▄▄▄▄▄▄▄ ▐░▌      ▐░▌ 
▐░▌          ▐░▌       ▐░▌▐░▌          ▐░░░░░░░░░░░▌▐░▌       ▐░▌
 ▀            ▀         ▀  ▀            ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀ 


'

S_ART = '
   ____
  / __ \
 ( (__) |___ ___
  \________,    """""----...______
   ______<  ()         ____------""
  / __   __`.___-----""""
 ( (__) |
  \____/


'

SP_ART = '

                     .......................... 
                 ................................... 
              ......................................... 
            ............................................. 
           ................................................ 
          .................................................. 
         .................................................... 
         ......;%;%%%%%%%%%%%%%%%%%%%%%%%%%%%;%%.............. 
         .....;%%%;;;;%%%%%%%%%%%%%%%%%%;;;;%%%%..............% 
         .....%%%%%%%%;;;%%%%%%%%%%%%;;;%%%%%%%%%............%%% 
         /....%%%%%%%%%%%%;%%%%%%%%;%%%%%%%%%%%%%%..........;%%% 
         //...%%%a@@`  "@%%//%%%%%%%%%@`  "@@a%%%%%%........;%/%% 
         //...%@@@@@aaa@@@%%//%%%%%%%@@@@aaa@@@@@%%%%%......%%/%% 
         //...%%%%%%%%%%%%%%//%%%%%%%%%%%%%%%%%%%%%%%%....%%/%%% 
          //..%%%%%%%%%%%%%//%%%%%%%%%%%%%%%%%%%%%%%%%...%%/%%% 
           //.%%%%%%%%%%%%%//%%%%%%%%%%%%%%%%%%%%%%%%%..%%/%%% 
            //%%%%%%%%%%%%//%%%%%%%%%%%%%%%%%%%%%%%%%%..%/%%% 
             ;%%%%%%%%%%%%//%%%%%%%%%%%%%%%%%%%%%%%%%.%%% 
               %%%%%%%%%%//%%%%%%%%%/;%%%%%%%%%%%%%%%
                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%/ 
                 ;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%// 
                   %%%%%<<<<<<<<<<<<<<<<<%%%%%%%%%%;// 
                    %%%%%<<<<<<<<<<<<<<<%%%%%%%%%%;/// 
                     %%%%%%%%%%%%%%%%%%%%%%%%%%%;///// 
                      %%%%%%%%%%%%%%%%%%%%%%%%;///////. 
                      /;%%%%%%%%%%%%%%%%%%%;////////.... 
                      ///;%%%%%%%%%%%%%%;////////......... 
                    ...///////////////////////.............. 
                  ........////////////////................,;;, 
               ,;............/////////.................,;;;;;;;;, 
           ,;;;;;;,................................,;;;;;;;;;;;;;;, 
       ,;;;;;;;;;;;;;,........................,;;;;;;;;;;;;;;;;;;;; 
   ,;;;;;;;;;;;;;;;;;;;;;,................,;;;;;;;;;;;;;;;;;;;;;;;; 
 ,;;;;;;;;;;;;;;;;;;;;;;;;;;,.........,;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;/#\;;;;;;;;;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;/####\;;;;;;;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;/#######\;;;;;;;


'

L_ART = '
      _.-~~-.__
  _-~ _-=-_   ""-,,
 (___ ~~~   0     ~""-_,,,,,,,,,,,,,,,,
  \~~~~~~--                            """"""--,,,,
   ~`-,_      ()                                     ,,,
        ''_      \                           /             """, _~/
           \||/~--\ \_________              / /______...---.  ;    
   \ ~~~~~~~~~~~~~  \  )~~------~~~~~~~~~~~~( /----         /,/  /
    |   -           / /                      \ \           /;/  /
   / -             / /                        / \         /;/  /
  /         __.---/  \__                     / /         |:|    \
 /_.~-----~       \   \ ~~~~~~~~~~~~~---~---  \ \-------- \:\    /


'

X_ART = '
            ,ggg,                   gg                   ,ggg,
           d8P""8b                ,d88b,                d8""Y8b
           Y8b,__,,aadd88888bbaaa,888888,aaadd88888bbaa,,__,d8P
            "88888888888888888888I888888I88888888888888888888"
            /|\ ""YY8888888PP""""`888888"""""YY8888888PP"" /|\
           / | \                   WWWW                   / | \
          /  |  \                 ,dMMb,                 /  |  \
         /   |   \                I8888I                /   |   \
        /    |    \                Y88P                /    |    \
       /     |     \                YP                /     |     \
      /      |      \               88               /      |      \
     /       |       \             i88i             /       |       \
    /        |        \            8888            /        |        \
"Y88888888888888888888888P"       i8888i       "Y88888888888888888888888P"
   ""Y888888888888888P""         ,888888,         ""Y888888888888888P""
                                 I888888I
                                 Y888888P
                                  Y8888P
                                   WWWW
                                   dMMb
                                _,ad8888ba,_
                    __,,aaaadd888888888888888bbaaaa,,__
                  d8888888888888888888888888888888888888b

'
C_ART = '
 
 ██████╗██╗  ██╗ █████╗ ███╗   ███╗██████╗ ██╗ ██████╗ ███╗   ██╗██╗
██╔════╝██║  ██║██╔══██╗████╗ ████║██╔══██╗██║██╔═══██╗████╗  ██║██║
██║     ███████║███████║██╔████╔██║██████╔╝██║██║   ██║██╔██╗ ██║██║
██║     ██╔══██║██╔══██║██║╚██╔╝██║██╔═══╝ ██║██║   ██║██║╚██╗██║╚═╝
╚██████╗██║  ██║██║  ██║██║ ╚═╝ ██║██║     ██║╚██████╔╝██║ ╚████║██╗
 ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝
                                                                    
                  .-"""-"""-"""--.--"""-"""-""""-.
                -"  I   I   I  I    I   I  I    I  "-.
                "   MMMMMMMMMMn)))).(((((nMMMMMMMMM    "
              "   M .-    -. "MMM    MMM" .-   -. M    "
              I   M  .-     -. -MM   MM- . .-    -. M    I
              I  M   MMMMMMMMM .     .  MMMMMMMMM   M    I
              I  M  M  M$M  MM       :  MM  M$M  M  M    I
              I      M MMM  M   -"".""-   M MMM  M       I
              I       """"""   MMMMMMMMM   """"""   .    I
              I      -....-  : MMMMMMM  :   -...- .    I
                " .   -....-     -   -      -...-      "
                ,  .        :                     . "
                  "   ....                    .....  "
                  "- ...;  :             :   .... -"
                    "-     ".-----....--."      -"
                      "-                 .   -"
                        "-      -...-  .    -"
                          "-.;  -....-   .-"
                              I"-......I"
                              I        I
                              I  -- -- I
                              I        I
                              I  -- -- I
                              I        I
                              I  -- -- I
                              I        I
                              I  -- -- I
'

def display_art(letter)
  case letter
  when "r"
    puts R_ART
  when "p"
    puts P_ART
  when "s"
    puts S_ART
  when "sp"
    puts SP_ART
  when "l"
    puts L_ART
  when "x"
    puts X_ART
  when "c"
    puts C_ART
  end
end


# Initialize empty array to store players choices
choices = []

# Initialize hash of winning combinations
win = {
  cuts: ["s", "p"],
  covers: ["p", "r"],
  crushes: ["r", "l"],
  poisons: ["l", "sp"],
  smashes: ["sp", "s"],
  decapitates: ["s", "l"],
  devours: ["l", "p"],
  disproves: ["p", "sp"],
  vaporizes: ["sp", "r"],
  breaks: ["r", "s"]
}

# Prompt method
def prompt(message)
  puts "=> #{message}"
end

# Initialize level 1 variables
champion = false
game_count = 0
human_points = 0
comp_points = 0

# Start Main Game Loop
loop do
  human_choice = ""
  # Initialize title variables

  # Welcome player/ Get Input Loop
  loop do
    game_count == 0 ? puts(TITLE) : nil

    weapons_prompt = <<-MSG

   PLEASE TYPE :

   +-+

    r     f   o   r     R   O   C   K 

    p     f   o   r     P   A   P   E   R 

    s     f   o   r     S   C   I   S   S   O   R   S 

    s p   f   o   r     S   P   O   C   K 

    l     f   o   r     L   I   Z   A   R   D 

   +-+

    MSG
    
    puts(weapons_prompt)
    human_choice = gets.chomp

    # Validate human input
    if VALID_CHOICES.include?(human_choice)
      game_count += 1
      # Clears the terminal after each valid input 
      puts %x[clear]
      break
    else
      prompt("Please enter a valid input.")
    end
  end

  # Get computer input
  computer_choice = VALID_CHOICES.sample
  
  # Convert letter input to word
  h_weapon = weapons.key(human_choice)
  c_weapon = weapons.key(computer_choice)

  # Assign ordered choices to array
  choices[0] = human_choice
  choices[1] = computer_choice

  # Winner Prompt & tally points
  if win.value?(choices)
    human_points += 1
    prompt("You won this round!")
    prompt("--------------------------------------------------")
    prompt("Your #{h_weapon} #{win.key(choices)} #{c_weapon}!")
    prompt("--------------------------------------------------")
    display_art(human_choice)
  elsif h_weapon == c_weapon
    prompt("There is a tie. #{c_weapon} kills #{h_weapon}.")
    prompt("--------------------------------------------------")
    display_art("x")
  else
    comp_points += 1
    prompt("You lost this round!")
    prompt("--------------------------------------------------")
    prompt("Computer's #{c_weapon} #{win.key(choices.reverse)} #{h_weapon}!")
    prompt("--------------------------------------------------")
    display_art(computer_choice)
  end

  prompt("Current Score is You: #{human_points} & Computer: #{comp_points}.")

  # Check points for winner
  if human_points == 5
    champion = true
    display_art("c")
  elsif comp_points == 5
    champion = true
    prompt("Computer reigns supreme!")
  end

  # Ask if user want to play again
  if champion
    prompt("Do you want to play again?(y/n)")
    answer = gets.chomp
    if answer.downcase().start_with?("y")
      # Reset champion's state and points
      champion = false
      human_points = 0
      comp_points = 0
      next
    else
      break
    end
  end
end

prompt("Thanks for playing. Goodbye!")
