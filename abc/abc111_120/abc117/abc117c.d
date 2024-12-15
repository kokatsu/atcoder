import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto X = readln.chomp.split.to!(int[]);

    X.sort;

    auto diff = new int[](M - 1);
    foreach (i; 0 .. M - 1) {
        diff[i] = X[i + 1] - X[i];
    }

    diff.sort;

    int res;
    if (M > N)
        res = diff[0 .. M - N].sum;

    res.writeln;
}
