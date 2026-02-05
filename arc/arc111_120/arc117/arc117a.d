import std;

void main() {
    int A, B;
    readf("%d %d", A, B);

    int[] E = new int[](A + B);
    E[0 .. A] = iota(1, A + 1).array;
    E[A .. A + B] = iota(-1, -B - 1, -1).array;

    int D = max(A, B);
    int S = D * (D + 1) / 2;
    if (A > B) {
        E[$ - 1] -= (S - B * (B + 1) / 2);
    }
    else if (A < B) {
        E[A - 1] += (S - A * (A + 1) / 2);
    }

    assert(E.sum == 0, format("E = %s, sum = %d", E, E.sum));

    string res = format("%(%d %)", E);
    res.writeln;
}
