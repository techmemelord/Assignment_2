int points = 50;
String firstDecision = Ask.forString("You are Homer and you wake up in your and cannot decide between watching TV all day or going to work for an important meeting. What will you do? watch tv or go to work?");
if (firstDecision.equals("watch tv")) {
  String tvShowChoice = Ask.forString("You are on the couch and can't decide between watching the news or a comedy show. What will you watch? News or comedy show");
  if (tvShowChoice.equals("news")) {
    String robberChoice = Ask.forString("While you are watching the news knowing what is going on in your city and you hear a news article that says that there is a robber on the loose, what do you do? Board up or hide valuables?");
    if (robberChoice.equals("board up")) {
      points -= 10;
      println("you spend 10 points to buy the materials to protect your valuables");
      println("The night passes by and you live to see another day");
      println("you ended the game with " + points + " points");
    } else if (robberChoice.equals("hide valuables")) {
      float robberChanceFloat = random(1, 11);
      int robberChanceInt = int(robberChanceFloat);
      if (robberChanceInt > 4) {
        println("Valuables have been successfully protected and you haven't lost any points");
      } else {
        points -= 30;
        println("The robber still finds your valuables and you have lost 30 points!");
        println("But you still live to see the next day, despite your precious valuables being stolen");
      }
      println("The night passes by and you live to see another day");
      println("you ended the game with " + points + " points");
    }
  } else if (tvShowChoice.equals("comedy show")) {
    String quickRobberyChoice = Ask.forString("You enjoy a lot of laughs, but then it gets interrupted by a breaking news article of a robber on the loose and is coming to your house in 5 minutes. What do you do? Fight him or do nothing?");
    if (quickRobberyChoice.equals("fight him")) {
      String weaponChoice = Ask.forString("Pick an item to fight the robber with: nothing or metal pipe");
      if (weaponChoice.equals("nothing")) {
        float winChanceFloat = random(1, 3);
        int winChanceInt = int(winChanceFloat);
        if (winChanceInt == 1) {
          println("You have successfully won the fight!");
          println("The night passes by and you live to see another day feeling confident about your fighting skills");
          println("you ended the game with " + points + " points");
        } else {
          println("You have unfortunlately lost the fight and died");
          println("You have lost the game, try again next time");
        }
      } else if (weaponChoice.equals("metal pipe")) {
        points -= 10;
        println("You yank a metal pipe from your house and knock the robber unconsious and take him to the police!");
        println("you spend 10 points for replacing the pipe you have yanked in your house");
        println("The night passes by and you live to see another day and feel like a hero for fighting crime");
        println("you ended the game with " + points + " points");
      }
    } else if (quickRobberyChoice.equals("do nothing")) {
      points -= 45;
      println("you go to your basement and the robber steals everything from your house, even the baking powder that was in the fridge since you bought the house");
      println("because of this, you lose 45 points.");
      println("But you survived the night and will live to see the next day, but at what cost?");
      println("you ended the game with " + points + " points");
    }
  }
} else if (firstDecision.equals("go to work")) {
  String drivingChoice = Ask.forString("You have breakfast and go in your car and drive to work, but you will be late if you do not arrive in 30 minutes. What do you do? Rush to work, or drive steadily?");
  if (drivingChoice.equals("rush to work")) {
    String policeDecision = Ask.forString("You break the laws while driving, and a police car has now stopped you for speeding and fines you, but you can probably bribe him. What do you do? Bribe or take fine?");
    if (policeDecision.equals("bribe")) {
      float bribeChanceFloat = random(1, 3);
      int bribeChanceInt = int(bribeChanceFloat);
      if (bribeChanceInt == 2) {
        points -= 50;
        println("Bribe was unsucessful and you have lost 50 points");
        println("you have " + points + " points now");
      } else {
        println("Bribe was successful and you keep your points!");
      }
    } else if (policeDecision.equals("take fine")) {
      points -= 25;
      println("You take the fine and lose 25 points");
      println("You now have " + points + " points");
    }
    String meltdownDecision = Ask.forString("You go to work doing your job, but you end up causing the power plant to go into a meltdown in 1 minute from now. What do you do? Read manual or panic?");
    if (meltdownDecision.equals("read manual")) {
      points -= 20;
      println("You find the right button and press it just when about the plant blows up");
      println("Your boss finds out that you almost caused a meltdown and cuts 20 points from your paycheck");
      points += 100;
      println("You earn your paycheck of 100 points and go home for the day");
      println("you ended the game with " + points + " points");
    } else if (meltdownDecision.equals("panic")) {
      float meltdownChanceFloat = random(1, 11);
      int meltdownChanceInt = int(meltdownChanceFloat);
      if (meltdownChanceInt < 5) {
        println("You find the right button and press it just in time");
        points += 100;
        println("You earn your paycheck of 100 points and go home for the day");
        println("you ended the game with " + points + " points");
      } else {
        println("You pressed the wrong button and you blew up the nuclear power plant killing everyone including you in the city");
        println("You lost the game, try again next time");
      }
    }
  } else if (drivingChoice.equals("drive steadily")) {
    String itemPurchaseDecision = Ask.forString("You are barely on time for work for your meeting, and you feel like you want to compensate for your tardiness. What do you do? Buy balloons or go with nothing?");
    if (itemPurchaseDecision.equals("buy balloons")) {
      points -= 25;
      println("Your boss makes you employee of the month and promotes you to executive manager increasing your paycheck to 300 points!");
      points += 300;
      println("you now have: " + points + " points");
    } else if (itemPurchaseDecision.equals("go with nothing")) {
      println("Your meeting goes as usual, despite your boss being frustrated at you for being almost late");
      points += 100;
      println("you now have: " + points + " points");
    }
    String placeDecision = Ask.forString("You finish your shift at work, get in your car, and you are stuck between 2 places to go to. Which one will you go to? Supermarket or home?");
    if (placeDecision.equals("supermarket")) {
      String itemDecision = Ask.forString("you go to the supermarket and have to decide between buying 2 things. Which one will you buy? Lottery ticket or donut? You have " + points + " points");
      if (itemDecision.equals("lottery ticket")) {
        points -= 100;
        float lotteryChanceFloat = random(1, 11);
        int lotteryChanceInt = int(lotteryChanceFloat);
        if (lotteryChanceInt == 5) {
          points += 10000;
          println("You won the lottery and got 10000 points!");
          println("You go home and celebrate it!");
          println("You end the day by feeling like it was the luckiest one yet!");
          println("you ended the game with " + points + " points");
        } else {
          println("You didn't win the lottery");
          println("You go home ending the day with dissapointment");
          println("you ended the game with " + points + " points");
        }
      } else if (itemDecision.equals("donut")) {
        points -= 100;
        println("You eat a tasty donut while you go home to finish your day off");
        println("you ended the game with " + points + " points");
      }
    } else if (placeDecision.equals("home")) {
      println("You go directly home to finish your day off");
      println("you ended the game with " + points + " points");
    }
  }
}
