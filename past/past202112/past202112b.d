import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] coins = [1, 5, 10, 50, 100, 500];

    int res;
    foreach (_; 0 .. N) {
        int A, B;
        readf("%d %d\n", A, B);

        int D = B - A;
        foreach_reverse (coin; coins) {
            if (coin == 5 || coin == 50) {
                res += D / coin;
            }
            D %= coin;
        }
    }

    res.writeln;
}