import std;

enum int M = 1000;
enum int[] coins = [500, 100, 50, 10, 5, 1];

void main() {
    int N;
    readf("%d\n", N);

    int R = M - N;

    int res;
    foreach (coin; coins) {
        res += R / coin;
        R %= coin;
    }

    res.writeln;
}
