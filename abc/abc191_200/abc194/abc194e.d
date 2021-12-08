import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);

    --M;

    auto rbt = iota(0, N+1).array.redBlackTree;
    auto cnts = new int[](N);
    int res = N;
    foreach (i, a; A) {
        if (cnts[a] == 0) {
            rbt.removeKey(a);
        }
        ++cnts[a];

        if (i >= M) {
            res = min(res, rbt.front);

            --cnts[A[i-M]];
            if (cnts[A[i-M]] == 0) {
                rbt.insert(A[i-M]);
            }
        }
    }

    res.writeln;
}