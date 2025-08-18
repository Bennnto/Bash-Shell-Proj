# Get Weather by Terminal 
  - Get weather infomation in terminal easy and simple scripting by using 'https://wttr.in'
  - Download .sh file
  - Open your terminal navigate to directory that store .sh file
  - run `chmod +x weather.sh` (in case you cannot execute this script try to run this first)
  - run `bash weather.sh || ./weather.sh`
## Script Info 
| #  |   Script    |             Use                                                                |
|----|-------------|--------------------------------------------------------------------------------|
| 1  | `CITIES`    | Identified city to get information can be 1 or more than 1 cities              |
| 2  | `INTERVAL`  | Use to specific time to refresh information from `https://wttr.in` 10 = 10 second |
| 3  | `While true`| Infinity Loop to let this script run and refresh data according to interval set|
| 4  | `Clear`     | Clear Screen everytime that re-run the script |
| 5  | `for`       | Let script to get infomation more than one city city in set of CITIES |
| 6  | `echo`      | Display information in this format "weather for Toronto (ASCII):" |
| 7  | `curl -s`   | Use curl -s to get information weather in signle line format |
| 8  | `curl`     | Use curl to get information in ASCII format and get only current weather information| 
| 9  | `done`     | End while loop|
| 10 | `Sleep`    | Count and Waiting according to preset internal
```
CITIES="Toronto Vancouver Bangkok Tokyo" #1
INTERVAL=10 #2 

while true; do #3
    clear #4 
    for CITY in $CITIES; do #5
        echo "Weather for $CITY (ASCII):" #6
        curl -s "https://wttr.in/${CITY}?format=%l:+%c+%t+%m+%u" #7
        echo #8
        echo "Saving PNG image as ${CITY}.png" 
	curl -s "https://wttr.in/${CITY}?0" #8
        echo "-----------------------------"
    done
    echo "Next update in $((INTERVAL/60)) minutes..."
    sleep $INTERVAL
done
```



### Optional Information
This is the information that I'm interested to put it in this .md file\
for more info about format and Other functions of `https://wttr.in` go to [more info](https://github.com/chubin/wttr.in)\
    - Optional format To specify your own custom output format, use the special %-notation:

   	 Example format :  `curl -s "https//wttr.in/Toronto?format=%l: %C+%h+%m+%w`
	<img src="https://drive.google.com/file/d/1slRgb3glCj7ytOkeAeJlho_53qpJGOqZ/view?usp=drive_link" alt="example format">



```	
    c :   Weather condition,
    C :   Weather condition textual name,
    x :   Weather condition, plain-text symbol,
    h :   Humidity,
    t :   Temperature (Actual),
    f :   Temperature (Feels Like),
    w :   Wind,
    l :   Location,
    m :   Moon phase 🌑🌒🌓🌔🌕🌖🌗🌘,
    M :   Moon day,
    p :   Precipitation (mm/3 hours),
    P :   Pressure (hPa),
    u :   UV index (1-12),
```
#### Output Result
![Example-output](https://freeimage.host/i/FmNzCYB)
    

