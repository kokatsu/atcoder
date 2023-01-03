import std;

void main() {
    int N, K;
    readf("%d\n%d\n", N, K);

    auto x = readln.chomp.split.to!(int[]);

    int res;
    foreach (a; x) {
        res += min(a, K-a) * 2;
    }

    res.writeln;
}