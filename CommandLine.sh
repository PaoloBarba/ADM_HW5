# Question 1: What is the most popular pair of heroes (often appearing together in the comics)?

echo 'The most popular pair of heroes is: '; sort hero-network.csv | awk -F, '{if ($1 != $2) print $0}' | uniq -c | sort -nr | cut -c 5-| head -n 1

#Question 2: Number of comics per hero.

echo 'The average number of heroes in comics is: '; cut -d, -f 2 edges.csv | sort | uniq -c | awk '{sum += $1; count++}END{print sum/count}'

#Question 3: The average number of heroes in comics.

echo 'The number of comics per hero (top 5) is: '; cut -d, -f 1 edges.csv | sort | uniq -c | sort -nr | head -n 5
