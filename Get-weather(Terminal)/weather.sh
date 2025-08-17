CITIES="Toronto Vancouver Bangkok Tokyo"
INTERVAL=10

while true; do
    clear
    for CITY in $CITIES; do
        echo "Weather for $CITY (ASCII):"
        curl -s "https://wttr.in/${CITY}?format=%l:+%c+%t+%m+%u"
        echo
        echo "Saving PNG image as ${CITY}.png"
	curl -s "https://wttr.in/${CITY}?0"
        echo "-----------------------------"
    done
    echo "Next update in $((INTERVAL/60)) minutes..."
    sleep $INTERVAL
done
