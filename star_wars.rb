require 'colorize'


class StarWarsGame




  def initialize
    puts "\e[H\e[2J"
    puts "What is your name?"
    name = gets.chomp



    puts `say Welcome #{name} to the world of Star Wars`




    puts """          ________   ___   ____    """
    puts """         / __   __| / _ | |  _ |     """
    puts """       __> \ | |   |  _  ||    /__    """
    puts """     |_____/ |_|   |_| |_||_|\____|    """
    puts """      _  __  _   ___  _____  ______    """
    puts """     | |/  | | / _  ||  _ | / ___|    """
    puts """     |       ||  _  ||    /__> |       """
    puts """     |__/ |_/ |_| |_||_| |______/     """



    puts "\n" * 5
    puts "Welcome to a Star Wars game."
    puts "+" * 50
    sleep(3)
    puts "Which side of the force do you choose?"
    puts "Option: Light or Dark"
    option = gets.chomp.downcase

    case option
    when "light"
      puts "You have chosen the Light side of the force.".white
      puts `say May the force be with you`
      light_start()

    when "dark"
      puts "You have chosen the Dark side of the force.".red
      puts `say You have joined the Dark Side`
      dark_start()

    else
      puts "That is not an option, choose again."
      initialize()
    end
  end


  def dark_start
    puts "You are an apprentice to a powerful Sith Lord, Darth Malgus."
    sleep(2)
    puts "\n"
    puts "He gives you a mission to hunt down and kill a Master Jedi"
    sleep(2)
    puts "You travel to a planet in the Hoth system."
    sleep(2)


    puts  """



                          |                   |
                          |                   |
                          |                   |
                          |        <^>        |
                          ||===I||(-@-)||I===||
                          |        |_|        |
                          |                   |
                          |                   |
                          |                   |
                          |                   |
                          |                   |



                          """

    puts "\n"
    puts "\n"
    puts "\n"

    sleep(1)
    puts `say vrrroooooooooooooooooommmmmmmmmmm`
    sleep(3)
    puts "When you arrive at a local town, an unknown hooded figure asks you to leave."
    puts "You can draw your lightsaber and strike him, attack him with force lightning, or attack him with a force choke."
    puts "Option: " +"lightsaber".red + "," + " lightning".colorize(:blue) + "," + " or" + " choke.".yellow
    option = gets.chomp.downcase

    case option
    when "lightsaber"
      puts "You draw your lightsaber and attack."
      puts "The hooded figure draws a blue lightsaber and blocks your attack. He is clearly a jedi and a duel between you starts."
      lightsaber_battle_start()


    when "lightning"
      puts "You attack the hooded figure with force lightning. He is badly injured, and collapses to the ground."
      jedi_injured()


    when "choke"
      puts "You use the force to choke the hooded figure. After being choked for a few seconds, the hooded figure breaks your grip and draws a blue lightsaber."
      puts "Clearly a jedi, the hooded figure rushes at you as you draw your red lightsaber. A duel begins."
      lightsaber_battle_start()

    else
      puts "That is not an option."
    end
  end


  def light_start
    puts "You are a padawan to the Jedi Master Opi-Won Ruby."
    puts "Your master tasks you with rescuing a Republic Senator captured by the Empire."
    puts "You fly your spaceship to the location of the captured Senator, coming close to what looks like a moon..."
    sleep(10)

    puts "\n"
    puts "\n"
    puts "\n"



    # puts "I am now red.".red
    # puts "I am now blue.".green
    # puts "I am a super coder".yellow

    puts  """                       ,_~===~-,          """
    puts  """                     .'(_)------`,        """
    puts  """                     |===========|        """
    puts  """                     `,---------,'        """
    puts  """                       ~-.___.-~          """


    puts "\n"
    puts "\n"
    puts "\n"

    sleep(3)
    puts `say thats no moon`
    puts "\"That's no moon!\" you cry out. It's actually a Death Star."
    puts "A tractor ray pulls your ship into the dock of the Death Star."
    puts "As enemy stormtroopers approach, you have to choose whether to fight them or hide in your ship."
    puts "Option: fight or hide"
    option = gets.chomp.downcase

    case option
    when "fight"
      puts "You draw your lightsaber and defeat the stormtroopers."
      sleep(1)
      puts "\n"
      puts "You fight your way through the Death Star, looking for the Senator."
      fight_through_ship()

    when "hide"
      puts "The stormtroopers find you hiding in your ship. They shoot you."
      sleep(2)
      you_die()
    else
      puts "That's not an option."
    end
  end


  def lightsaber_battle_start
    sleep(3)
    puts "Will you fight the battle offensively or defensively?"
    puts "Option: offensive or defensive"
    option = gets.chomp.downcase

    case option
    when "offensive"
      puts "You are more aggressive in your attacks, and put the jedi on the defensive."
      aggressive_attack()
    when "defensive"
      puts "You parry the jedi's attacks, waiting for an opportunity that leaves him vulnerable."
      puts "However, that opportunity doesn't seem to open up."
      lightsaber_battle_start()
    else
      puts "That's not a strategy"
      lightsaber_battle_start()
    end
  end


  def aggressive_attack
    puts "He parries an attack that leaves him vulnerable. Do you attack high or attack low?"
    puts "Option: high or low"
    option = gets.chomp.downcase

    case option
    when "high"
      puts "Your attack critically injures him and he falls to the ground."
      jedi_injured()

    when "low"
      puts "He easily counters your low attack and stabs you with his lightsaber."
      you_die()

    else
      puts "You failed to attack him."
      you_die()
    end
  end


  def jedi_injured
    puts "You realize that he is actually the jedi that Darth Malgus ordered you to kill."
    sleep(2)
    puts `say IF YOU STRIKE ME DOWN, I SHALL BECOME MORE POWERFUL THAN YOU CAN POSSIBLY IMAGINE`
    sleep(1)
    puts "Will you deliver a final blow to the jedi with your lightsaber, or kill him with force lightning?"
    puts "Option: lightsaber or lightning"
    option = gets.chomp.downcase

    case option
    when "lightsaber"
      puts "You cut off his head with your lightsaber."
      sleep(1)
      puts "You complete your mission and return to Malgus."
      you_win

    when "lightning"
      puts "You electrocute the jedi with force lightning."

      sleep(1)
      puts "The shock is enough to kill him. You complete your mission and return to Malgus."
      you_win

    else
      puts "You failed to deliver the final blow."
      you_die()
    end
  end


  def fight_through_ship
      puts "You come across a red door and a blue door. Which door do you take?"
      puts "Option: " + "red".red + " or" + " purple".blue
      option = gets.chomp.downcase

      case option
      when "red"
        puts "You go through the red door."
        red_door()

      when "purple"
        puts "You go through the purple door......."
        sleep(1)
        puts "A wampa is on the other side and decides that you are dinner."
        sleep(2)
        you_die()
      else
        puts "That's not a door"
      end
    end

  def red_door
    puts "You find the Senator behind the red door."
    sleep(1)
    puts "\n"
    puts "You escape the Death Star and complete your mission."
    sleep(2)
    you_win
  end

  def you_die
    puts "Your decision cost you your life and now you're dead."
    puts `say aaaaaarrrrrrrggggggggggghhhhhhhhh`
    puts `say You are now dead`

    puts "X" * 50
    sleep(3)
    puts `say Do you want to play again?`
    puts "Do you want to play again?: \n yes or no."
    option = gets.chomp.downcase

    case option
    when "yes"
      initialize()
    when "no"
      exit()
    else
      exit()

    end
  end


  def you_win
    puts "You have won the game!"
    sleep(2)
    puts `say You have brought balance to the force`
    sleep(2)
    puts `say Do you want to play again?`
    puts "Do you want to play again?"
    puts "Yes or no"
    option = gets.chomp.downcase

    case option
    when "yes"
      initialize
    when "no"
      exit
    else
      puts `say I will take that as a yes`
      initialize
    end

  end


end




game = StarWarsGame.new()
game.initialize
