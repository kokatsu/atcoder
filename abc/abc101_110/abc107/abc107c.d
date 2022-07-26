import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto x = readln.chomp.split.to!(int[]);

    int res = int.max;
    foreach (i; 0 .. N-K+1) {
        int a = x[i], b = x[i+K-1];
        int time = b - a + min(a.abs, b.abs);

        res = min(res, time);
    }

    res.writeln;
}