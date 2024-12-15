import std;

void main() {
    long N;
    readf("%d\n", N);

    auto X = new long[](N), Y = new long[](N), Z = new long[](N);
    foreach (i; 0 .. N)
        readf("%d %d %d\n", X[i], Y[i], Z[i]);

    long S = Z.sum, L = S / 2 + 1;
    foreach (i; 0 .. N) {
        if (X[i] > Y[i])
            L -= Z[i];
    }

    if (L <= 0) {
        0.writeln;
        return;
    }

    long[long] list;
    list[0] = 0;
    long res = long.max;
    foreach (i; 0 .. N) {
        if (X[i] > Y[i])
            continue;

        long[long] next = list.dup;
        foreach (l; list.byKeyValue) {
            long num = l.key + Z[i];
            if (num >= L) {
                res = min(res, l.value + ((X[i] + Y[i]) / 2 + 1) - X[i]);
            }
            else if (num in next) {
                next[num] = min(next[num], l.value + ((X[i] + Y[i]) / 2 + 1) - X[i]);
            }
            else {
                next[num] = l.value + ((X[i] + Y[i]) / 2 + 1) - X[i];
            }
        }

        list = next;
    }

    res.writeln;
}
