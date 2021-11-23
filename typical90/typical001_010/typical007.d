import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    A.sort;
    auto C = A.assumeSorted;

    int Q;
    readf("%d\n", Q);

    foreach (i; 0 .. Q) {
        int B;
        readf("%d\n", B);

        auto left = C.lowerBound(B).length;

        int res= int.max;
        if (left > 0) {
            res = min(res, B-A[left-1]);
        }
        if (left < N) {
            res = min(res, A[left]-B);
        }

        res.writeln;
    }
}