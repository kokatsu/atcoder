import std;

void main() {
    int N;
    readfln("%d", N);

    int R, B;
    foreach (_; 0 .. N) {
        string S;
        readfln("%s", S);

        foreach (c; S) {
            if (c == 'R') {
                ++R;
            }
            else if (c == 'B') {
                ++B;
            }
        }
    }

    string res = R > B ? "TAKAHASHI" : R < B ? "AOKI" : "DRAW";
    res.writeln;
}
