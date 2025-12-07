import std;

void main() {
    int Q;
    readf("%d\n", Q);

    long[] plants;
    long elapsedDays;
    size_t harvestedPlants;
    size_t[] L;

    size_t lowerBound(long target) {
        size_t left = 0;
        size_t right = plants.length;

        while (left < right) {
            size_t mid = (left + right) / 2;
            if (plants[mid] < target) {
                left = mid + 1;
            }
            else {
                right = mid;
            }
        }
        return left;
    }

    foreach (_; 0 .. Q) {
        long[] query = readln.chomp.split.to!(long[]);
        if (query[0] == 1) {
            plants ~= elapsedDays;
        }
        else if (query[0] == 2) {
            elapsedDays += query[1];
        }
        else {
            size_t idx = lowerBound(elapsedDays - query[1] + 1);
            L ~= idx - harvestedPlants;
            harvestedPlants = idx;
        }
    }

    string res = format("%(%d\n%)", L);
    res.writeln;
}
