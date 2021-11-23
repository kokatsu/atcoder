import std;

void main() {
    int H, W, N;
    readf("%d %d %d\n", H, W, N);

    auto A = new int[](N), B = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", A[i], B[i]);
    }

    auto C = A.dup.sort.uniq.array.assumeSorted;
    auto D = B.dup.sort.uniq.array.assumeSorted;

    foreach (i; 0 .. N) {
        auto x = C.lowerBound(A[i]).length + 1;
        auto y = D.lowerBound(B[i]).length + 1;

        writeln(x, " ", y);
    }
}