import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    if (A.all!(a => a == A[0])) {
        writeln(0);
        return;
    }

    int cmp(int x, int y) {
        if (x > y) return 1;
        if (x < y) return -1;
        return 0;
    }

    int res = 1, prev, f = A[0];
    foreach (i; 1 .. N) {
        int op = cmp(A[i-1], A[i]);
        if (op == 0 || op * prev == 1) continue;

        ++res, prev = op;
    }

    res.writeln;
}