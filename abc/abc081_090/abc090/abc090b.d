import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    int res;
    foreach (i; A .. B + 1) {
        auto S = i.to!string
            .to!(dchar[]);
        auto T = S.dup;

        T.reverse;

        if (S == T)
            ++res;
    }

    res.writeln;
}
