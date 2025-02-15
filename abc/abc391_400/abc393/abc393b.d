import std;

void main() {
    string S;
    readf("%s\n", S);

    auto L = S.length;

    int res;
    foreach (i; 0 .. L) {
        if (S[i] != 'A') {
            continue;
        }

        foreach (j; i + 1 .. L) {
            if (S[j] != 'B') {
                continue;
            }

            auto k = j * 2 - i;
            if (k < L && S[k] == 'C') {
                ++res;
            }
        }
    }

    res.writeln;
}
