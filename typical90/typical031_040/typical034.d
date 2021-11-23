import std;

void main() {
    ulong N, K;
    readf("%d %d\n", N, K);

    auto a = readln.chomp.split.to!(ulong[]);

    ulong[ulong] list;
    ulong res, cnt;
    ulong r;
    foreach (l; 0 .. N) {
        while (r < N && (list.length < K || ((list.length <= K) && (a[r] in list)))) {
            ++list[a[r]], ++cnt;
            ++r;
        }

        res = max(res, cnt);

        if (l == r) {
            ++r;
        }
        else {
            --list[a[l]], --cnt;
            if (list[a[l]] == 0) {
                list.remove(a[l]);
            }
        }
    }

    res.writeln;
}