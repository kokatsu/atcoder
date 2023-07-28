import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto pow10 = new long[](N);
    pow10[0] = 1;
    foreach (i; 1 .. N) pow10[i] = (pow10[i-1] * 10) % M;

    long b = -1, p = -1;
    foreach (i; 1uL .. 10uL) {
        long num;
        foreach (j; 0 .. N) {
            num = (num + pow10[j] * i) % M;

            if (num == 0 && (j >= p)) {
                b = i, p = j;
            }
        }
    }

    string res = (b > 0 ? b.to!string.replicate(p+1) : "-1");
    res.writeln;
}