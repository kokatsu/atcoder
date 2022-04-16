import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    auto B = new long[][](N+1);
    foreach (i, a; A) B[a] ~= i + 1;

    auto P = new SortedRange!(long[], "a < b")[](N+1);
    foreach (i; 0 .. N+1) P[i] = B[i].assumeSorted;

    long Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        long L, R, X;
        readf("%d %d %d\n", L, R, X);

        auto lbl = P[X].lowerBound(L);
        auto lbr = P[X].lowerBound(R+1);

        auto res = lbr.length - lbl.length;
        res.writeln;
    }
}