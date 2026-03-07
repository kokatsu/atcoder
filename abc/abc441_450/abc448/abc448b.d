import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    int[] C = readln.chomp.split.to!(int[]);

    int[int] D;
    foreach (_; 0 .. N) {
        int A, B;
        readfln("%d %d", A, B);

        D[A] = D.get(A, 0) + B;
    }

    int res;
    foreach (i, c; C) {
        res += min(c, D.get(i.to!int + 1, 0));
    }

    res.writeln;
}
