import std;

void main() {
    long A, B;
    readf("%d %d\n", A, B);

    long S = A.to!real
        .sqrt
        .floor
        .to!long;
    long[] divisors;
    foreach (i; 1 .. S + 1) {
        if (A % i != 0)
            continue;

        divisors ~= i;
        if (i * i != A)
            divisors ~= A / i;
    }

    divisors.sort;

    long res;
    foreach (d; divisors) {
        if (B % d != 0)
            continue;

        ++res;
        while (d > 1 && B % d == 0)
            B /= d;
    }

    res.writeln;
}
