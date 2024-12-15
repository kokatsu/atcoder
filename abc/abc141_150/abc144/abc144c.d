import std;

void main() {
    long N;
    readf("%d\n", N);

    long res = long.max, L = 10 ^^ 6 + 1;
    foreach (i; 1 .. L) {
        if (N % i != 0)
            continue;

        res = min(res, i + N / i - 2);
    }

    res.writeln;
}
