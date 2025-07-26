import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        long N, M;
        readf("%d %d\n", N, M);

        long[] A = readln.chomp.split.to!(long[]);
        long[] B = readln.chomp.split.to!(long[]);

        A.sort;

        auto rbt = B.redBlackTree!true;

        long res;
        foreach (i; 0 .. N) {
            auto ub = rbt.upperBound(M - A[i] - 1);
            if (ub.empty) {
                res += A[i];
                continue;
            }

            res += (A[i] + ub.front) % M;
            A[i] = 0;
            rbt.removeKey(ub.front);
        }

        while (!rbt.empty) {
            res += rbt.front;
            rbt.removeFront;
        }

        res.writeln;
    }
}
