
declare -A die_results

roll_die() {
    local result=$((1 + RANDOM % 6))
    echo "$result"
}

update_results() {
    local result=$1
    die_results[$result]=$((die_results[$result]+1))
}

check_counts() {
    local max_count=0
    local min_count=10
    local max_number=""
    local min_number=""

    for number in "${!die_results[@]}"; do
        count=${die_results[$number]}

        if (( count > max_count )); then
            max_count=$count
            max_number=$number
        fi

        if (( count < min_count )); then
            min_count=$count
            min_number=$number
        fi
    done

    echo "Number $max_number reached maximum times: $max_count"
    echo "Number $min_number reached minimum times: $min_count"
}

while true; do
    result=$(roll_die)
    update_results "$result"

    echo "Die rolled: $result"

    for number in "${!die_results[@]}"; do
        count=${die_results[$number]}
        if (( count == 10 )); then
            echo "Number $number reached 10 times."
            check_counts
            exit 0
        fi
    done

    sleep 1
done
