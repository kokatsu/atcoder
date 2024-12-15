import std;

void main() {
    int N;
    readf("%d\n", N);

    auto C = readln.chomp.split.to!(int[]);

    auto edge = new int[][](N + 1);
    foreach (_; 0 .. N - 1) {
        int A, B;
        readf("%d %d\n", A, B);

        edge[A] ~= B, edge[B] ~= A;
    }

    auto cnts = new int[](10 ^^ 5 + 1);
    auto good = new bool[](N + 1);

    void f(int now, int pre = 0) {
        int c = C[now - 1];

        if (cnts[c] == 0)
            good[now] = true;
        ++cnts[c];

        foreach (e; edge[now]) {
            if (e == pre)
                continue;

            f(e, now);
        }

        --cnts[c];
    }

    f(1);

    foreach (i, g; good)
        g && i.writeln;
}
