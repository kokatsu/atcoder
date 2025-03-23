import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto B = new int[](N);
    foreach (i; 1 .. N) {
        B[i] = B[i - 1];
        if (i % 2 == 0) {
            B[i] += A[i] - A[i - 1];
        }
    }

    A[0] = -1;
    auto S = A.dup.assumeSorted;
    A[0] = 0;

    int f(int x) {
        auto lb = S.lowerBound(x);
        auto i = lb.length.to!int - 1;
        return B[i] + (x - A[i]) * ((B[i + 1] - B[i]) / (A[i + 1] - A[i]));
    }

    int Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        int L, R;
        readf("%d %d\n", L, R);

        int res = f(R) - f(L);
        res.writeln;
    }
}
