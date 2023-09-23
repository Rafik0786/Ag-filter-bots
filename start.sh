if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone /Ag-filter-bots /Ag-filter-bots
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Ag-filter-bots
fi
cd /Ag-filter-bots
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
