import std;

void main() {
    int N;
    readf("%d\n", N);

    bool[string] D;
    foreach (_; 0 .. N) {
        dchar[] S;
        readf("%s\n", S);

        auto T = S.dup;
        T.reverse;

        D[min(S, T).to!string] = true;
    }

    auto res = D.length;
    res.writeln;
}
