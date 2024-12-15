import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto L = S.length;

    int res;
    foreach (_; 0 .. N) {
        string T;
        readf("%s\n", T);

        int M = T.length.to!int;
        auto P = iota(M).filter!(i => T[i] == S[0]).array;

        bool isOk;
        foreach (p; P) {
            if (isOk)
                break;

            foreach (i; 1 .. M) {
                if (isOk)
                    break;

                int q = p + i, c = 1;
                while (c < L && q < M) {
                    if (T[q] != S[c])
                        break;

                    q += i, ++c;
                }

                isOk |= c == L;
            }
        }

        if (isOk)
            ++res;
    }

    res.writeln;
}
