import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    A.sort;

    auto G = A.group.array;

    int cnt;
    foreach (g; G) {
        cnt += g[1] - 1;
    }

    if (cnt % 2 == 1) ++cnt;

    int res = N - cnt;
    res.writeln;
}