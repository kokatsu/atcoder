import std;

struct S {
    int id, num;
}

void main() {
    int N, T;
    readf("%d %d\n", N, T);

    auto tree = new S[][](N);
    foreach (i; 0 .. N - 1) {
        int A, B;
        readf("%d %d\n", A, B);

        --A, --B;
        tree[A] ~= S(i, B), tree[B] ~= S(i, A);
    }

    auto seen = new bool[](N - 1);
    auto res = new int[](N);

    int f(int x) {
        foreach (t; tree[x]) {
            if (seen[t.id])
                continue;

            seen[t.id] = true;
            res[x] = max(res[x], f(t.num) + 1);
        }

        return res[x];
    }

    f(T - 1);

    writefln("%(%s %)", res);
}
