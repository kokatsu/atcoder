import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[](N);
    int[][int] pos;
    foreach (i; 0 .. N) {
        readf("%d\n", A[i]);

        if (A[i] !in pos) {
            pos[A[i]] = [];
        }

        pos[A[i]] ~= i;
    }

    int index;
    auto res = new int[](N);
    while (index < N) {
        auto T = pos[A[index]][$-1] + 1;
        res[index..T] = A[index];

        index = T;
    }

    writefln("%(%d\n%)", res);
}