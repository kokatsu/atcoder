import std;

void main() {
    long N, A, B;
    readf("%d %d %d\n", N, A, B);

    auto X = readln.chomp.split.to!(long[]);

    long res;
    foreach (i; 1 .. N) {
        long D = X[i] - X[i - 1];
        res += min(D * A, B);
    }

    res.writeln;
}
