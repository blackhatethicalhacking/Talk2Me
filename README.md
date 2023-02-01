# BHEH's Talk2Me

<p align="center">
<a href="https://www.blackhatethicalhacking.com"><img src="https://pbs.twimg.com/profile_banners/770898848197795840/1650879597/1500x500" width="600px" alt="BHEH"></a>
</p>
<p align="center">
<a href="https://www.blackhatethicalhacking.com"><img src="https://www.blackhatethicalhacking.com/wp-content/uploads/2022/06/BHEH_logo.png" width="300px" alt="BHEH"></a>
</p>

<p align="center">

**Unleash the power of AI, right from your terminal! Your personal language model, always at your fingertips**

Talke2Me is written by Chris "SaintDruG" Abou-Chabke from Black Hat Ethical Hacking with the help of #ChatGPT as an experimentation, with a lot of hours spent modifying the code generated by ChatGPT and is designed for everyone, especially coders!


# Description

**The future of conversation, now in your command line!**

Talk2Me is a bash script that implements a conversational agent using OpenAI's API. Here are the main functionalities of this tool:

- Asks the user for their name and greets them.

- Continuously prompts the user for input and generates responses using OpenAI's API.

- Allows the user to exit the conversation by typing "exit" or "quit".

- Automatically saves the conversation to a file in a folder named after the user and the date.

- Informs the user of the location of the saved file after the conversation has ended.

- Uses the lolcat utility to display text in rainbow colors.


# What is Special about Talk2Me vs OpenAI Web Chat?

Talk2Me is indeed a great implementation of a conversational agent that leverages OpenAI's API. Here are a few reasons why this tool is considered awesome and better than using OpenAI's API via their web interface:

- Automation: With this script, you can automate the process of having a conversation with OpenAI's API, making it easier and more efficient.

- Customization: The script allows you to set the API key, model, max number of tokens to generate, and temperature, giving you control over the API's behavior.

- Text Formatting: The use of the lolcat utility makes the text colorful, making the conversations more visually appealing.

- Easy Data Retrieval: By automatically saving the conversation to a file, you can easily retrieve the conversation later and even use it for other purposes, such as generating code.

In conclusion, this script is an excellent example of how OpenAI's API can be used in a creative and efficient manner to implement a conversational agent. The fact that it saves the conversations for later retrieval is an added bonus that makes it even more valuable.

# Requirements:

To run the tool on Kali Linux, Ubuntu, and MacOS, you need to have the following requirements installed:

- curl - A command line tool for sending HTTP requests.

• Installation instructions for Kali Linux: `apt-get install curl`

• Installation instructions for Ubuntu: `sudo apt-get install curl`

• Installation instructions for MacOS: curl is already installed on macOS, if it's not installed then you can install it using `brew install curl`

- jq - A command-line JSON processor that is used to parse the JSON response from the OpenAI API.

• Installation instructions for Kali Linux: `apt-get install jq`

• Installation instructions for Ubuntu: `sudo apt-get install jq`

• Installation instructions for MacOS: `brew install jq`

- lolcat - A tool used to colorize the text output in the terminal, it's optional and the script will still work without it.

• Installation instructions for Kali Linux: `apt-get install lolcat`

• Installation instructions for Ubuntu: `sudo apt-get install lolcat`

• Installation instructions for MacOS: `brew install lolcat`

- An API Key from OpenAI. You can sign up for an API Key at https://beta.openai.com/signup/

- A terminal emulator, such as Terminal (MacOS) or gnome-terminal (Kali Linux/Ubuntu).

# Installation

`git clone https://github.com/blackhatethicalhacking/Talk2Me.git`

`cd Talk2Me`

`chmod +x Talk2Me.sh`

`./Talk2Me.sh`

# Screenshot

**Main Menu**

<img width="959" alt="Screenshot 2023-02-02 at 1 25 48 AM" src="https://user-images.githubusercontent.com/13942386/216190509-40695524-2498-48e7-aa17-a8c5972f1500.png">


# Compatibility: 

This tool has been tested on Kali Linux, Ubuntu and MacOS.

# To Do

- Add support for different models and prompt customization.

- Implement multi-threading for faster response times.

- Integration with other APIs for enhanced functionality.

- Allow for customization of token count and temperature for better results.

- Add a user-friendly GUI for easier usage.

**Feel Free to contribute with these or more changes by sending me a push request!**

# Disclaimer

This tool is provided for educational and research purpose only. The author of this project are no way responsible for any misuse of this tool. 
We use it to test under NDA agreements with clients and their consents for pentesting purposes and we never encourage to misuse or take responsibility for any damage caused !

# Support

If you would like to support us, you can always buy us coffee(s)! :blush:

<a href="https://www.buymeacoffee.com/bheh" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>
