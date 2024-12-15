import std;

void main() {
    int N;
    readf("%d\n", N);

    foreach (_; 0 .. N) {
        string S;
        readf("%s\n", S);

        auto T = S.matchFirst(`\.*okyo.*ech.*$`);

        string res = !T.empty ? "Yes" : "No";
        res.writeln;
    }
}
