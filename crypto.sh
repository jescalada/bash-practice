curl https://www.cryptingup.com/api/markets | jq -r '.markets[] | "\(.volume_24h) \(.symbol) \(.quote.USD.price)"' | sort -rn | head -n 10 | awk '{print $2 " " $3}'
