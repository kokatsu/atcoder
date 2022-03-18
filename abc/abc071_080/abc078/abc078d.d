import std;

void main() {
    int N, Z, W;
    readf("%d %d %d\n", N, Z, W);

    auto a = readln.chomp.split.to!(int[]);

    int res = abs(a[N-1]-W);
    if (N > 1) res = max(res, abs(a[N-1]-a[N-2]));

    res.writeln;
}