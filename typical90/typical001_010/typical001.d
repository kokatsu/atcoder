import std;

void main() {
    int N, L, K;
    readf("%d %d\n%d\n", N, L, K);

    auto A = readln.chomp.split.to!(int[]);

    int ok, ng = L;
    while (ng - ok > 1) {
        int m = (ok + ng) / 2;

        int b, c;
        foreach (a; A) {
            if (a - b >= m) {
                b = a;
                ++c;
            }
        }
        if (L - b >= m) {
            ++c;
        }

        if (c > K) {
            ok = m;
        }
        else {
            ng = m;
        }
    }

    ok.writeln;
}