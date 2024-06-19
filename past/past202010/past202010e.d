import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = readln.chomp.to!(dchar[]);

    foreach (P; S.permutations) {
        auto T = P.to!(dchar[]);
        if (T == S) continue;

        auto R = T.dup;
        R.reverse;
        if (R == S) continue;

        T.writeln;
        return;
    }

    writeln("None");
}