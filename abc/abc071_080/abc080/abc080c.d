import std;

void main() {
    int N;
    readf("%d\n", N);

    auto F = new int[][](N);
    foreach (i; 0 .. N)
        F[i] = readln.chomp.split.to!(int[]);

    auto P = new int[][](N);
    foreach (i; 0 .. N)
        P[i] = readln.chomp.split.to!(int[]);

    int res = int.min, M = 10;
    foreach (i; 1 .. 1 << M) {
        int num;

        foreach (j; 0 .. N) {
            int cnt;
            foreach (k; 0 .. M) {
                if (((i >> k) & 1) && F[j][k] == 1)
                    ++cnt;
            }

            num += P[j][cnt];
        }

        res = max(res, num);
    }

    res.writeln;
}
