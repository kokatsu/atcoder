import std;

void main() {
    int K;
    readf("%d\n", K);

    long[] numbers;

    void dfs(long x) {
        numbers ~= x;

        long d = x % 10;
        foreach (i; 0 .. d) {
            dfs(x * 10 + i);
        }
    }

    foreach (i; 1 .. 10) {
        dfs(i);
    }

    numbers.sort;

    long res = numbers[K - 1];
    res.writeln;
}
