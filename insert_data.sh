#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
$PSQL "TRUNCATE TABLE teams,games"
function INSERT_TEAM(){
    QUERY=$($PSQL "SELECT team_id FROM teams WHERE name='$1'")
    echo $QUERY
    if [[ -z $QUERY ]]
    then
      INSERT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$1')")
      echo "successfully inserted $1 into table teams"
    else
      echo "team $1 already in table teams"
    fi
}
function INSERT_GAME(){
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$1'")
    echo "TEAM ID: $WINNER_ID"
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$2'")
    echo "TEAM ID: $OPPONENT_ID"
    QUERY=$($PSQL "SELECT game_id FROM games WHERE winner_id=$WINNER_ID AND opponent_id=$OPPONENT_ID")
    if [[ -z $QUERY ]]
    then
      INSERT_RESULT=$($PSQL "INSERT INTO GAMES(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($3,'$4',$WINNER_ID,$OPPONENT_ID,$5,$6)")
      echo "Round $4 $1 $2 successfully inserted"
    else
      echo "Game data already in database"
    fi
}

cat games.csv  | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != year ]]
  then
    #echo "$WINNER"
    #echo "$OPPONENT"
    INSERT_TEAM "$WINNER"
    INSERT_TEAM "$OPPONENT"
    INSERT_GAME "$WINNER" "$OPPONENT" $YEAR "$ROUND" $WINNER_GOALS $OPPONENT_GOALS
  fi
done
#$PSQL "SELECT * FROM teams"

