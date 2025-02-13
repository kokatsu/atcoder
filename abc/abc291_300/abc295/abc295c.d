import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    A.sort;

    int res;
    foreach (g; A.group) {
        res += g[1] / 2;
    }

    res.writeln;
}
