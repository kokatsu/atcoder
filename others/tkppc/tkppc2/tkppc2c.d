import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto H = readln.chomp.split.to!(int[]);

    int res, cnt, r;
    foreach (l; 0 .. N) {
        while (r < N && cnt + 1 - H[r] <= K) {
            cnt += 1 - H[r++];
        }

        res = max(res, r - l);

        if (l < r) {
            cnt -= 1 - H[l];
        }
        else {
            ++r;
        }
    }

    res.writeln;
}
