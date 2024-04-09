import std;

void main() {
    int N, T;
    readf("%d %d\n", N, T);

    auto A = new int[](N), B = new int[](N);
    foreach (i; 0 .. N) readf("%d %d\n", A[i], B[i]);

    auto D = new int[](N);
    D[] = A[] - B[];
    D.sort!"a > b";

    int res, idx, S = A.sum;
    while (S > T) {
        if (idx >= N) {
            res = -1;
            break;
        }

        S -= D[idx++];
        ++res;
    }

    res.writeln;
}