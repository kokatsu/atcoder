import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(int[]);

    auto G = A.dup.sort.group.array;

    int res, num, cnt;
    foreach (g; G) {
        if (g[0] == num) {
            ++num, ++cnt;
            res = max(res, num);
        }

        if (cnt == K) break;
    }

    res.writeln;
}