import std;

alias Pair = Tuple!(int, int);

void main() {
    int M, K;
    readf("%d %d\n", M, K);

    int lim = 1 << M;
    int[] res;
    if (K == 0) {
        auto l = iota(lim).array;
        auto r = l.dup;
        r.reverse;
        res = l ~ r;
    }
    else if (M == 1 || K >= lim) {
        res = [-1];
    }
    else {
        int[Pair] list;
        foreach (i; 0 .. lim) {
            int u = i, v = K ^ i;
            if (u > v) swap(u, v);
            ++list[Pair(u, v)];
        }

        auto P = list.keys;
        P.sort!"a[0] < b[0]";

        auto Q = P.map!(a => a.expand.only).array;

        auto len = Q.length, cnt = len / 2;
        int pos, num;
        res.length = len * 4;
        foreach (i; 0 .. cnt) {
            foreach (j; 0 .. 8) {
                auto d = j.to!(dchar[])(4).map!(a => a - '0').fold!"a ^ b";
                int a = (d >> 1) & 1, b = d & 1;
                res[pos+j] = Q[num+a][b];
            }
            pos += 8, num += 2;
        }
    }

    writefln("%(%s %)", res);
}