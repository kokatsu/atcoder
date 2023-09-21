import std;

void main() {
    int A, B, C, D;
    readf("%d %d %d %d\n", A, B, C, D);

    auto X = new int[](C);
    foreach (i; 0 .. C) {
        auto E = readln.chomp.split.to!(int[]);

        E.sort!"a > b";

        X[i] = E[B-1];
    }

    X.sort!"a > b";

    int res = X[D-1];
    res.writeln;
}