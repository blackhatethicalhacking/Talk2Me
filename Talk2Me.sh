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
