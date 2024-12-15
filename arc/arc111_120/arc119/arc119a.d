import std;

void main() {
    long N;
    readf("%d\n", N);

    long res = N;

    long exp2 = 1;
    long b;
    while (exp2 <= N) {
        long a = N / exp2;
        long c = N % exp2;
        res = min(res, a + b + c);
        ++b;
        exp2 *= 2;
    }

    res.writeln;
}
