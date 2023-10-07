import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);

    auto P = iota(1, N+1).array, Q = new int[][](N);
    foreach (i; 0 .. N) {
        string S;
        readf("%s\n", S);

        foreach (j, s; S) {
            if (s == 'o') P[i] += A[j];
            else Q[i] ~= A[j];
        }

        Q[i].sort!"a > b";
    }

    auto rbt = P.redBlackTree!("a > b", true);

    foreach (i, p; P) {
        int res, num = p;
        rbt.removeKey(p);

        foreach (q; Q[i]) {
            if (num > rbt.front) break;
            ++res, num += q;
        }

        rbt.insert(p);
        res.writeln;
    }
}