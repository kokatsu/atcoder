import std;

void main() {
    int K, N;
    readf("%d %d\n", K, N);

    auto A = readln.chomp.split.to!(int[]);

    auto B = A ~ (A.dup[] += K);

    int res = int.max;
    foreach (i; 0 .. N) {
        res = min(res, B[i + N - 1] - B[i]);
    }

    res.writeln;
}
