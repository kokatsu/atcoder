import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    long M;
    long[long] dict;
    foreach (_; 0 .. N) {
        long a, b;
        readf("%d %d\n", a, b);

        M += b;

        if (a !in dict) {
            dict[a] = 0;
        }

        dict[a] += b;
    }

    auto kv = dict.byPair.array;

    kv.sort!((a, b) => a.key < b.key);

    long res = 1;
    if (M > K) {
        foreach (x; kv) {
            M -= x.value;

            if (M <= K) {
                res = x.key + 1;
                break;
            }
        }
    }

    res.writeln;
}
