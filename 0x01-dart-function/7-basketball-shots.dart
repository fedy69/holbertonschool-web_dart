int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int calculatePoints(Map<String, int> team) {
    return (team['Free throws'] ?? 0) + (team['2 pointers'] ?? 0) * 2 + (team['3 pointers'] ?? 0) * 3;
  }

  int pointsTeamA = calculatePoints(teamA);
  int pointsTeamB = calculatePoints(teamB);

  return pointsTeamA.compareTo(pointsTeamB);
}
