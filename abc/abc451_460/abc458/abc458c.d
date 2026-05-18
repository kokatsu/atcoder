import std;

void main() {
    string S;
    readfln("%s", S);

    long N = S.length.to!long;

    long res, L, R = N - 1;
    foreach (i; 0 .. N) {
        if (S[i] == 'C') {
            res += min(L, R) + 1;
        }
        ++L, --R;
    }

    res.writeln;
}
