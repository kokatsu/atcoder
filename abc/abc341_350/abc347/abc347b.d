import std;

void main() {
    string S;
    readf("%s\n", S);

    size_t L = S.length;

    bool[string] D;
    foreach (i; 0 .. L) {
        foreach (j; i .. L) {
            D[S[i .. j + 1]] = true;
        }
    }

    size_t res = D.length;
    res.writeln;
}
