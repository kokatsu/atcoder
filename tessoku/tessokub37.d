import std;

void main() {
    long N = readln.chomp.to!long;

    long res, P = 1;
    while (P <= N) {
        foreach (i; 0 .. 10) {
            long d = N / (P * 10);
            long r = N % (P * 10) + 1;

            res += i * d * P;

            if (r > i * P) {
                res += i * min(P, r - i * P);
            }
        }

        P *= 10;
    }

    res.writeln;
}
