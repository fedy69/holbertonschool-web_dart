int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int calculatePoints(Map<String, int> team) {
    int totalPoints = 0;
    totalPoints += team['Free throws'] ?? 0;
    totalPoints += (team['2 pointers'] ?? 0) * 2;
    totalPoints += (team['3 pointers'] ?? 0) * 3;
    return totalPoints;
  }

  int pointsTeamA = calculatePoints(teamA);
  int pointsTeamB = calculatePoints(teamB);

  if (pointsTeamA > pointsTeamB) {
    return 1;
  } else if (pointsTeamA < pointsTeamB) {
    return 2;
  } else {
    return 0;
  }
}