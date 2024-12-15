import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int L = 1 << N;
    auto P = iota(L).array;

    auto res = new int[](L);
    res[] = 1;
    foreach (_; 0 .. N - 1) {
        L /= 2;
        int[] next;
        foreach (i; 0 .. L) {
            int x = i * 2, y = i * 2 + 1;
            if (A[P[x]] < A[P[y]])
                swap(x, y);

            next ~= P[x];
            ++res[P[x]];
        }

        P = next;
    }

    writefln("%(%d\n%)", res);
}
