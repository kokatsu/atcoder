import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[][](N);
    foreach (i; 0 .. N)
        A[i] = readln.chomp.split.to!(int[]);

    auto isGood = new bool[][](N, N);
    foreach (i; 0 .. N)
        isGood[i][] = true;

    int M;
    readf("%d\n", M);

    foreach (i; 0 .. M) {
        int X, Y;
        readf("%d %d\n", X, Y);

        --X, --Y;
        isGood[X][Y] = isGood[Y][X] = false;
    }

    auto leg = N.iota;
    int res = int.max;
    foreach (l; leg.permutations) {
        bool isOK = true;
        int num = A[l[0]][0];
        foreach (i; 1 .. N) {
            isOK &= isGood[l[i - 1]][l[i]];
            num += A[l[i]][i];
        }

        if (isOK)
            res = min(res, num);
    }

    if (res == int.max)
        res = -1;

    res.writeln;
}
