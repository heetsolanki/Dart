void playGame(String player1, String player2) {
  print("Player 1 chose: ${player1}");
  print("Player 2 chose: ${player2}");
  if (player1 == "rock" && player2 == "paper" 
      || player1 == "paper" && player2 == "scissors" 
      || player1 == "scissors" && player2 == "rock") {
    print("Player 2 wins!");
  } 
  else if (player1 == "rock" && player2 == "scissors" 
           || player1 == "paper" && player2 == "rock" 
           || player1 == "scissors" && player2 == "paper") {
    print("Player 1 wins!");
  } 
  else if (player1 == "rock" && player2 == "rock"
           || player1 == "paper" && player2 == "paper" 
           || player1 == "scissors" && player2 == "scissors") {
    print("Its a tie!");
  }
}

void main() {
  playGame("rock", "scissors");
}
