import std;

void main() {
    int N, X;
    readf("%d %d\n", N, X);

    auto A = readln.chomp.split.to!(int[]);

    --X;
    A[] -= 1;

    auto known = new bool[](N);

    int now = X;
    int res;
    while (!known[now]) {
        ++res;
        known[now] = true;
        now = A[now];
    }

    res.writeln;
}