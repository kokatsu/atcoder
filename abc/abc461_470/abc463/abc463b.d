import std;

void main() {
    int N;
    dchar X;
    readfln("%d %c", N, X);

    int P = X - 'A';

    bool ok;
    foreach (_; 0 .. N) {
        string S;
        readfln("%s", S);

        ok |= S[P] == 'o';
    }

    string res = ok ? "Yes" : "No";
    res.writeln;
}
