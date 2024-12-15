import std;

void main() {
    int N, X, Y;
    readf("%d %d %d\n", N, X, Y);

    auto A = readln.chomp.split.to!(int[]);

    A.sort!"a > b";

    int T = A.stride(2).sum;

    int U = X + T, V = Y + A.sum - T;

    string res = "Draw";
    if (U > V)
        res = "Takahashi";
    if (U < V)
        res = "Aoki";

    res.writeln;
}
