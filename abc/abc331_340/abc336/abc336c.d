import std;

void main() {
    long N;
    readf("%d\n", N);

    --N;

    long num = 1, p;
    while (num <= N) {
        num *= 5, ++p;
    }

    long res;
    foreach (i; 0 .. p) {
        num /= 5;
        res = res * 10 + N / num * 2;
        N %= num;
    }

    res.writeln;
}
