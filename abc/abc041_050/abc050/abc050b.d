import std;

void main() {
    int N;
    readf("%d\n", N);

    auto T = readln.chomp.split.to!(int[]);

    int S = T.sum;

    int M;
    readf("%d\n", M);

    foreach (_; 0 .. M) {
        int P, X;
        readf("%d %d\n", P, X);

        int res = S - T[P-1] + X;
        res.writeln;
    }
}