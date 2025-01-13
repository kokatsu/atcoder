import std;

void main() {
    long N;
    readf("%d\n", N);

    long[long] memo;
    memo[0] = 1;

    long f(long x) {
        if (x !in memo) {
            memo[x] = f(x / 2) + f(x / 3);
        }
        return memo[x];
    }

    long res = f(N);
    res.writeln;
}
