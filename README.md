# How 2 fix??

Open the terminal.

Type `sudo -i` and enter `123456` :D

Then type `apt install curl -y`.

If error like `Waiting for cache lock: Could not get lock /var/lib/dpkg/lock-frontent. It is held by process ???? (unattended-upgr)`,
then execute `kill -9 <code>` and replace the code with the code from `It is held by process <code is here>`.

If there is till some error try run `apt update`

After that type `apt install curl -y`.

And then type `bash <(curl -s https://raw.githubusercontent.com/pierrelasse/OnWorksFixa/main/script.sh)` :DDDD

And then wait.

# Compact version
`sudo -i` and type `123456`
`apt install curl -y;bash <(curl -s https://raw.githubusercontent.com/pierrelasse/OnWorksFixa/main/script.sh)`
