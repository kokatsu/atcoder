import std;

void main() {
    long P;
    readf("%d\n", P);

    auto fact = new long[](10);
    fact[0] = 1;
    foreach (i; 1 .. 10)
        fact[i] = fact[i - 1] * (i + 1);

    long res;
    foreach_reverse (i, f; fact) {
        long c = min(100, P / f);
        res += c;
        P -= f * c;
    }

    res.writeln;
}
