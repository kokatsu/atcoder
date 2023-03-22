import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto S = A.sort;

    int Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        int X;
        readf("%d\n", X);

        auto res = S.lowerBound(X).length;
        res.writeln;
    }
}