import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    A.sort;

    long res;
    foreach (i; 1 .. N) {
        res += A[N - i / 2 - 1];
    }

    res.writeln;
}
