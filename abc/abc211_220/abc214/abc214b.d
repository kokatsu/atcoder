import std;

void main() {
    long S, T;
    readf("%d %d\n", S, T);

    auto A = iota(S+1);

    long res;
    foreach (a; cartesianProduct(A, A, A)) {
        bool isOK = true;
        isOK &= (a[0] + a[1] + a[2] <= S);
        isOK &= (a[0] * a[1] * a[2] <= T);

        if (isOK) ++res;
    }

    res.writeln;
}