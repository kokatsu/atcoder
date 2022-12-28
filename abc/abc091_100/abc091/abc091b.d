import std;

void main() {
    int[string] money;

    int N;
    readf("%d\n", N);

    foreach (_; 0 .. N) {
        string s;
        readf("%s\n", s);

        ++money[s];
    }

    int M;
    readf("%d\n", M);

    foreach (_; 0 .. M) {
        string t;
        readf("%s\n", t);

        --money[t];
    }

    int res;
    foreach (val; money.byValue) {
        res = max(res, val);
    }

    res.writeln;
}