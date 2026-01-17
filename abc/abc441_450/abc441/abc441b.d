import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    string S, T;
    readfln("%s", S);
    readfln("%s", T);

    bool[dchar] X = S.assocArray(true.repeat);
    bool[dchar] Y = T.assocArray(true.repeat);

    int Q;
    readfln("%d", Q);

    string[] R = new string[](Q);
    foreach (ref r; R) {
        string w;
        readfln("%s", w);

        bool x = true, y = true;
        foreach (v; w) {
            x &= X.get(v, false);
            y &= Y.get(v, false);
        }

        if (x && !y) {
            r = "Takahashi";
        }
        else if (!x && y) {
            r = "Aoki";
        }
        else {
            r = "Unknown";
        }
    }

    string res = format("%-(%s\n%)", R);
    res.writeln;
}
