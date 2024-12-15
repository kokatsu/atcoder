import std;

void main() {
    long N, A, B;
    readf("%d %d %d\n", N, A, B);

    auto S = readln.chomp.to!(dchar[]);

    long res = long.max, h = N / 2;
    foreach (i; 0 .. N) {
        long num = i * A;
        foreach (j; 0 .. h) {
            if (S[j] != S[N - j - 1])
                num += B;
        }

        res = min(res, num);

        auto f = S.front;
        S.popFront;
        S ~= f;
    }

    res.writeln;
}
