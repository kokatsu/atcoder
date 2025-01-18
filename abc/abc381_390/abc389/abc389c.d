import std;

void main() {
    int Q;
    readf("%d\n", Q);

    int n, m;
    auto snakes = new long[](Q + 1);
    foreach (i; 0 .. Q) {
        auto query = readln.chomp.split.to!(long[]);

        if (query[0] == 1) {
            snakes[n + 1] = snakes[n] + query[1];
            ++n;
        }
        else if (query[0] == 2) {
            ++m;
        }
        else {
            long res = snakes[query[1] + m - 1] - snakes[m];
            res.writeln;
        }
    }
}
