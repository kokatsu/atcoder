import std;

void main() {
    int N, K, Q;
    readf("%d %d %d\n", N, K, Q);

    auto A = readln.chomp.split.to!(int[]);
    auto L = readln.chomp.split.to!(int[]);

    auto P = new bool[](N + 1);
    foreach (a; A)
        P[a] = true;

    foreach (l; L) {
        int cnt, pos;
        while (cnt < l) {
            if (P[pos])
                ++cnt;
            if (cnt < l)
                ++pos;
        }

        if (pos == N)
            continue;
        if (P[pos + 1])
            continue;

        P[pos] = false;
        P[pos + 1] = true;
    }

    ulong[] res;
    foreach (i, p; P)
        if (p)
            res ~= i;

    writefln("%(%s %)", res);
}
