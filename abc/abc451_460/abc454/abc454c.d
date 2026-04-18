import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    int[][int] D;
    foreach (i; 0 .. M) {
        int A, B;
        readfln("%d %d", A, B);

        D[A] ~= B;
    }

    bool[] U = new bool[](N + 1);
    U[1] = true;
    int[] L = [1];
    while (!L.empty) {
        int x = L.front;
        L.popFront;

        if (x !in D) {
            continue;
        }

        foreach (y; D[x]) {
            if (!U[y]) {
                U[y] = true;
                L ~= y;
            }
        }
    }

    ulong res = U.count(true);
    res.writeln;
}
