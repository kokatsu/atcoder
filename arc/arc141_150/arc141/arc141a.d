import std;

void main() {
    long T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        string N;
        readf("%s\n", N);

        auto M = N.to!long;
        auto L = N.length;

        auto res = "9".replicate(L-1).to!long;
        foreach (i; 1 .. L/2+1) {
            auto P = N[0..i];
            auto cnt = L / i;

            auto S = P.replicate(cnt);
            long num = S.to!long;
            if (num > M) {
                num = to!string(P.to!long-1).replicate(cnt).to!long;
            }

            res = max(res, num);
        }

        res.writeln;
    }
}