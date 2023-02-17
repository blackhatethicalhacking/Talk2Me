#!/bin/bash
curl --silent "https://raw.githubusercontent.com/blackhatethicalhacking/Subdomain_Bruteforce_bheh/main/ascii.sh" | lolcat
echo ""
echo "IT'S ☕ 1337 ⚡ TIME, 369 ☯ " | lolcat
sleep 1
curl --silent "https://raw.githubusercontent.com/blackhatethicalhacking/Talk2Me/main/Talk2Me_ascii.sh" | lolcat
echo ""
echo "[YOUR ARE USING Talk2Me.sh] - (v1.0) CODED BY Chris 'SaintDruG' Abou-Chabké WITH ❤ FOR blackhatethicalhacking.com for Educational Purposes only!" | lolcat
sleep 1
#check if the user is connected to the internet
tput bold;echo "CHECKING IF YOU ARE CONNECTED TO THE INTERNET!" | lolcat
# Check connection
wget -q --spider https://google.com
if [ $? -ne 0 ];then
    echo "++++ CONNECT TO THE INTERNET BEFORE RUNNING Talk2Me.sh!" | lolcat
    exit 1
fi
tput bold;echo "++++ CONNECTION FOUND, LET'S GO!" | lolcat
# Matrix effect
echo "Entering the Matrix for 5 seconds in:" | toilet --metal -f term -F border
sleep 1
echo "3" | toilet --gay -f term -F border
sleep 1
echo "2" | toilet --metal -f term -F border
sleep 1
echo "1" | toilet --gay -f term -F border
sleep 1

R='\033[0;31m'
G='\033[0;32m'
Y='\033[1;33m'
B='\033[0;34m'
P='\033[0;35m'
C='\033[0;36m'
W='\033[1;37m'

for ((i=0; i<5; i++)); do
    echo -ne "${R}10 ${G}01 ${Y}11 ${B}00 ${P}01 ${C}10 ${W}00 ${G}11 ${P}01 ${B}10 ${Y}11 ${C}00\r"
    sleep 0.2
    echo -ne "${R}01 ${G}10 ${Y}00 ${B}11 ${P}10 ${C}01 ${W}11 ${G}00 ${P}10 ${B}01 ${Y}00 ${C}11\r"
    sleep 0.2
    echo -ne "${R}11 ${G}00 ${Y}10 ${B}01 ${P}00 ${C}11 ${W}01 ${G}10 ${P}00 ${B}11 ${Y}10 ${C}01\r"
    sleep 0.2
    echo -ne "${R}00 ${G}11 ${Y}01 ${B}10 ${P}11 ${C}00 ${W}10 ${G}01 ${P}11 ${B}00 ${Y}01 ${C}10\r"
    sleep 0.2
done
# Let the magic begin
echo "Hi! What's your name?" | lolcat
read name
echo "Hi $name! How can I help you today?" | lolcat

# Set the API Key
API="YOUR OpenAI API GOES HERE"

# Set the OpenAI model to use
MODEL="text-davinci-003"

# Set the max number of tokens to generate
MAX_TOKENS=4000

# Set the temperature for the model
TEMPERATURE=1.0

# Function to generate a response from OpenAI API
generate_response() {
  curl -sS https://api.openai.com/v1/completions \
    -H 'Content-Type: application/json' \
    -H "Authorization: Bearer $API" \
    -d "{
      \"model\": \"$MODEL\",
      \"prompt\": \"$1\",
      \"max_tokens\": $MAX_TOKENS,
      \"temperature\": $TEMPERATURE
    }"
}

# Main loop to continuously ask for input and generate responses
while true; do
  echo ""
  echo "$name: " | lolcat
  read input
  if [ "$input" == "exit" ] || [ "$input" == "quit" ]; then
    echo "Exiting... Have a 1337 day! from Black Hat Ethical Hacking - www.blackhatethicalhacking.com - Support us if you like this!" | lolcat

    timestamp=$(date +%Y-%m-%d)
    folder="$name/$timestamp"
    if [ ! -d "$folder" ]; then
      mkdir -p "$folder"
    fi

    filename="$folder/$name-$(date +%s).txt"
    echo "Conversation saved at $filename" | lolcat
    echo "===BEGIN CONVERSATION===\n" >> "$filename"
    while read -r line; do
      echo "$line" >> "$filename"
    done < <(echo "$input" && echo "$response")
    echo "\n===END CONVERSATION===" >> "$filename"

    exit 0
  fi
  response=$(generate_response "$input")
  echo ""
  echo "ChatGPT: $(echo $response | jq -r '.choices[0].text')"
done
