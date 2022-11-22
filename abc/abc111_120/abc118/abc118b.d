import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto cnts = new int[](M+1);
    foreach (_; 0 .. N) {
        auto A = readln.chomp.split.to!(int[]);

        foreach (a; A[1..$]) ++cnts[a];
    }

    auto res = cnts.count(N);
    res.writeln;
}