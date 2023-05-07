
declare -A birth_months

generate_birth_month() {
    local month=$((1 + RANDOM % 12))
    echo "$month"
}

for ((i=1; i<=50; i++)); do
    birth_month=$(generate_birth_month)
    birth_months[$birth_month]+="$i "
done

echo "Individuals with birthdays in the same month:"

for month in "${!birth_months[@]}"; do
    individuals="${birth_months[$month]}"
    echo "Month $month: $individuals"
done
