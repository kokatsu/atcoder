import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto isFriend = new bool[][](N, N);
    foreach (_; 0 .. M) {
        int A, B;
        readf("%d %d\n", A, B);

        --A, --B;
        isFriend[A][B] = isFriend[B][A] = true;
    }

    foreach (i; 0 .. N) {
        int res;
        foreach (j; 0 .. N) {
            if (i == j || isFriend[i][j])
                continue;

            bool isOK;
            foreach (k; 0 .. N) {
                if (i == k || j == k)
                    continue;

                if (isFriend[i][k] && isFriend[k][j])
                    isOK = true;
            }

            if (isOK)
                ++res;
        }

        res.writeln;
    }
}
