import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);
    auto B = readln.chomp.split.to!(int[]);
    auto C = readln.chomp.split.to!(int[]);

    A[] -= 1;

    int res, pre = -2;
    foreach (i; 0 .. N) {
        res += B[A[i]];

        if (pre + 1 == A[i])
            res += C[pre];

        pre = A[i];
    }

    res.writeln;
}
